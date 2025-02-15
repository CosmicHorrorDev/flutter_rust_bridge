use crate::codegen::generator::codec::sse::ty::structure::GeneralizedStructGenerator;
use crate::codegen::generator::codec::sse::ty::*;
use crate::codegen::generator::misc::StructOrRecord;
use crate::codegen::ir::namespace::NamespacedName;
use crate::codegen::ir::ty::enumeration::{IrEnum, IrVariant, IrVariantKind};
use crate::library::codegen::generator::codec::sse::lang::LangTrait;
use itertools::Itertools;

impl<'a> CodecSseTyTrait for EnumRefCodecSseTy<'a> {
    fn generate_encode(&self, lang: &Lang) -> Option<String> {
        let src = self.ir.get(self.context.ir_pack);
        Some(generate_enum_encode_rust_general(
            lang,
            src,
            "self",
            |idx, variant| {
                let fields = (variant.kind.fields().iter())
                    .map(|field| {
                        format!(
                            "{};\n",
                            lang.call_encode(&field.ty, &field.name.style(lang))
                        )
                    })
                    .join("");

                format!(
                    "{}; {fields}",
                    lang.call_encode(&TAG_TYPE, &format!("{idx}")),
                )
            },
        ))
    }

    fn generate_decode(&self, lang: &Lang) -> Option<String> {
        let src = self.ir.get(self.context.ir_pack);

        let var_decl = lang.var_decl();
        let expr_decode_tag = lang.call_decode(&TAG_TYPE);

        let variants = (src.variants().iter().enumerate())
            .map(|(idx, variant)| {
                (
                    format!("{idx}"),
                    generate_decode_variant(variant, &src.name, lang),
                )
            })
            .collect_vec();

        let body = lang.switch_expr(
            "tag_",
            &variants,
            Some(format!("{};", lang.throw_unimplemented(""))),
        );

        Some(format!(
            "
            {var_decl} tag_ = {expr_decode_tag};
            {body}
            "
        ))
    }
}

fn generate_decode_variant(variant: &IrVariant, enum_name: &NamespacedName, lang: &Lang) -> String {
    let enum_name_str = enum_name.style(lang);
    let enum_sep = enum_sep(lang);
    match &variant.kind {
        IrVariantKind::Value => {
            format!(
                "return {enum_name_str}{enum_sep}{}{};",
                variant.name,
                match lang {
                    Lang::DartLang(_) => "()",
                    Lang::RustLang(_) => "",
                }
            )
        }
        IrVariantKind::Struct(st) => {
            GeneralizedStructGenerator::new(st.clone(), StructOrRecord::Struct).generate_decode(
                lang,
                Some(format!("{enum_name_str}{enum_sep}{}", st.name.name)),
                false,
            )
        }
    }
}

pub(crate) fn generate_enum_encode_rust_general(
    lang: &Lang,
    src: &IrEnum,
    self_ref: &str,
    generate_branch: impl Fn(usize, &IrVariant) -> String,
) -> String {
    let enum_name_str = src.name.style(lang);
    let enum_sep = enum_sep(lang);
    let variants = (src.variants().iter().enumerate())
        .map(|(idx, variant)| {
            let variant_name = &variant.name;
            let pattern = pattern_match_enum_variant(lang, variant);
            let body = generate_branch(idx, variant);
            (
                format!("{enum_name_str}{enum_sep}{variant_name}{pattern}"),
                body,
            )
        })
        .collect_vec();

    lang.switch_expr(self_ref, &variants, None)
}

fn pattern_match_enum_variant(lang: &Lang, variant: &IrVariant) -> String {
    match &variant.kind {
        IrVariantKind::Value => match lang {
            Lang::DartLang(_) => "()".to_owned(),
            Lang::RustLang(_) => "".to_owned(),
        },
        IrVariantKind::Struct(st) => match lang {
            Lang::DartLang(_) => {
                let pattern = (st.fields.iter())
                    .map(|field| format!("{name}: final {name}", name = field.name.dart_style()))
                    .join(",");
                format!("({pattern})")
            }
            Lang::RustLang(_) => {
                let pattern = (st.fields.iter())
                    .map(|field| field.name.rust_style().to_owned())
                    .join(",");
                let (left, right) = st.brackets_pair();
                format!("{left}{pattern}{right}")
            }
        },
    }
}

fn enum_sep(lang: &Lang) -> &'static str {
    match lang {
        Lang::DartLang(_) => "_",
        Lang::RustLang(_) => "::",
    }
}

const TAG_TYPE: IrType = Primitive(IrTypePrimitive::I32);
