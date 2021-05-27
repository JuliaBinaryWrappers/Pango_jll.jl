# Autogenerated wrapper script for Pango_jll for aarch64-apple-darwin
export libpango, libpangocairo, libpangoft

using FriBidi_jll
using FreeType2_jll
using Glib_jll
using Fontconfig_jll
using HarfBuzz_jll
using Cairo_jll
JLLWrappers.@generate_wrapper_header("Pango")
JLLWrappers.@declare_library_product(libpango, "@rpath/libpango-1.0.0.dylib")
JLLWrappers.@declare_library_product(libpangocairo, "@rpath/libpangocairo-1.0.0.dylib")
JLLWrappers.@declare_library_product(libpangoft, "@rpath/libpangoft2-1.0.0.dylib")
function __init__()
    JLLWrappers.@generate_init_header(FriBidi_jll, FreeType2_jll, Glib_jll, Fontconfig_jll, HarfBuzz_jll, Cairo_jll)
    JLLWrappers.@init_library_product(
        libpango,
        "lib/libpango-1.0.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpangocairo,
        "lib/libpangocairo-1.0.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_library_product(
        libpangoft,
        "lib/libpangoft2-1.0.0.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()