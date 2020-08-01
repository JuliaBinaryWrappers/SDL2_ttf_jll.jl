# Autogenerated wrapper script for SDL2_ttf_jll for i686-linux-musl
export libsdl2_ttf

using SDL2_jll
using FreeType2_jll
using libpng_jll
using HarfBuzz_jll
using Graphite2_jll
using Glib_jll
using PCRE_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libsdl2_ttf`
const libsdl2_ttf_splitpath = ["lib", "libSDL2_ttf.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libsdl2_ttf_path = ""

# libsdl2_ttf-specific global declaration
# This will be filled out by __init__()
libsdl2_ttf_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libsdl2_ttf = "libSDL2_ttf-2.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"SDL2_ttf")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (SDL2_jll.PATH_list, FreeType2_jll.PATH_list, libpng_jll.PATH_list, HarfBuzz_jll.PATH_list, Graphite2_jll.PATH_list, Glib_jll.PATH_list, PCRE_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (SDL2_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, libpng_jll.LIBPATH_list, HarfBuzz_jll.LIBPATH_list, Graphite2_jll.LIBPATH_list, Glib_jll.LIBPATH_list, PCRE_jll.LIBPATH_list,))

    global libsdl2_ttf_path = normpath(joinpath(artifact_dir, libsdl2_ttf_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdl2_ttf_handle = dlopen(libsdl2_ttf_path)
    push!(LIBPATH_list, dirname(libsdl2_ttf_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

