# Autogenerated wrapper script for Pango_jll for i686-linux-gnu
export libpango, libpangocairo, libpangoft

using FriBidi_jll
using FreeType2_jll
using Glib_jll
using Fontconfig_jll
using HarfBuzz_jll
using Cairo_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libpango`
const libpango_splitpath = ["lib", "libpango-1.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpango_path = ""

# libpango-specific global declaration
# This will be filled out by __init__()
libpango_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpango = "libpango-1.0.so.0"


# Relative path to `libpangocairo`
const libpangocairo_splitpath = ["lib", "libpangocairo-1.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpangocairo_path = ""

# libpangocairo-specific global declaration
# This will be filled out by __init__()
libpangocairo_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpangocairo = "libpangocairo-1.0.so.0"


# Relative path to `libpangoft`
const libpangoft_splitpath = ["lib", "libpangoft2-1.0.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpangoft_path = ""

# libpangoft-specific global declaration
# This will be filled out by __init__()
libpangoft_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpangoft = "libpangoft2-1.0.so.0"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Pango")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (FriBidi_jll.PATH_list, FreeType2_jll.PATH_list, Glib_jll.PATH_list, Fontconfig_jll.PATH_list, HarfBuzz_jll.PATH_list, Cairo_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (FriBidi_jll.LIBPATH_list, FreeType2_jll.LIBPATH_list, Glib_jll.LIBPATH_list, Fontconfig_jll.LIBPATH_list, HarfBuzz_jll.LIBPATH_list, Cairo_jll.LIBPATH_list,))

    global libpango_path = normpath(joinpath(artifact_dir, libpango_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpango_handle = dlopen(libpango_path)
    push!(LIBPATH_list, dirname(libpango_path))

    global libpangocairo_path = normpath(joinpath(artifact_dir, libpangocairo_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpangocairo_handle = dlopen(libpangocairo_path)
    push!(LIBPATH_list, dirname(libpangocairo_path))

    global libpangoft_path = normpath(joinpath(artifact_dir, libpangoft_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpangoft_handle = dlopen(libpangoft_path)
    push!(LIBPATH_list, dirname(libpangoft_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()

