# Autogenerated wrapper script for SDL2_ttf_jll for powerpc64le-linux-gnu
export libsdl2_ttf

using SDL2_jll
using FreeType2_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

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
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (SDL2_jll.PATH_list, FreeType2_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (SDL2_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list,))

    global libsdl2_ttf_path = normpath(joinpath(artifact_dir, libsdl2_ttf_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libsdl2_ttf_handle = dlopen(libsdl2_ttf_path)
    push!(LIBPATH_list, dirname(libsdl2_ttf_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

