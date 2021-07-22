# Autogenerated wrapper script for SDL2_ttf_jll for i686-linux-gnu
export libsdl2_ttf

using Bzip2_jll
using FreeType2_jll
using Glib_jll
using Graphite2_jll
using libpng_jll
using PCRE_jll
using SDL2_jll
JLLWrappers.@generate_wrapper_header("SDL2_ttf")
JLLWrappers.@declare_library_product(libsdl2_ttf, "libSDL2_ttf-2.0.so.0")
function __init__()
    JLLWrappers.@generate_init_header(Bzip2_jll, FreeType2_jll, Glib_jll, Graphite2_jll, libpng_jll, PCRE_jll, SDL2_jll)
    JLLWrappers.@init_library_product(
        libsdl2_ttf,
        "lib/libSDL2_ttf.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
