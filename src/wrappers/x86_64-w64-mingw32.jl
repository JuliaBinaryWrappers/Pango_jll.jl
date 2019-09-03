# Autogenerated wrapper script for Pango_jll for x86_64-w64-mingw32
export libpango, libpangocairo

using FriBidi_jll
using FreeType2_jll
using Glib_jll
using Fontconfig_jll
using HarfBuzz_jll
using Cairo_jll
## Global variables
const PATH_list = String[]
const LIBPATH_list = String[]
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"

# Relative path to `libpango`
const libpango_splitpath = ["bin", "libpango-1.0-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpango_path = ""

# libpango-specific global declaration
# This will be filled out by __init__()
libpango_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpango = "libpango-1.0-0.dll"


# Relative path to `libpangocairo`
const libpangocairo_splitpath = ["bin", "libpangocairo-1.0-0.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libpangocairo_path = ""

# libpangocairo-specific global declaration
# This will be filled out by __init__()
libpangocairo_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libpangocairo = "libpangocairo-1.0-0.dll"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list

    append!(PATH_list, FriBidi_jll.PATH_list)
    append!(LIBPATH_list, FriBidi_jll.LIBPATH_list)
    append!(PATH_list, FreeType2_jll.PATH_list)
    append!(LIBPATH_list, FreeType2_jll.LIBPATH_list)
    append!(PATH_list, Glib_jll.PATH_list)
    append!(LIBPATH_list, Glib_jll.LIBPATH_list)
    append!(PATH_list, Fontconfig_jll.PATH_list)
    append!(LIBPATH_list, Fontconfig_jll.LIBPATH_list)
    append!(PATH_list, HarfBuzz_jll.PATH_list)
    append!(LIBPATH_list, HarfBuzz_jll.LIBPATH_list)
    append!(PATH_list, Cairo_jll.PATH_list)
    append!(LIBPATH_list, Cairo_jll.LIBPATH_list)
    global libpango_path = abspath(joinpath(artifact"Pango", libpango_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpango_handle = dlopen(libpango_path)
    push!(LIBPATH_list, dirname(libpango_path))

    global libpangocairo_path = abspath(joinpath(artifact"Pango", libpangocairo_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libpangocairo_handle = dlopen(libpangocairo_path)
    push!(LIBPATH_list, dirname(libpangocairo_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(LIBPATH_list, ';')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

