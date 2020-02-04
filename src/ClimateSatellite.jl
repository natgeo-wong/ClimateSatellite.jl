module ClimateSatellite

# Main file for the ClimateSatellite module that downloads climate-related
# variables from various satellite instruments

## Modules Used
using Dates, Printf, DelimitedFiles
using NCDatasets, HDF5, FTPClient, PyCall
using ClimateEasy

## Exporting the following functions:
export
        clisatinfo!, clisatdownload, clisatrawsave,
        clisatrawall, clisatrawpoint, clisatrawgrid,
        clisatroot, clisatrawfol, clisatanafol, clisatrawname,
        clisatlonlat,
        gpmdwn, mimicdwn

## Including other files in the module
include("general.jl")
include("frontend.jl")
include("analysis.jl")
include("gpm.jl")
#include("trmm.jl")
include("mimic.jl")
#include("modis.jl")
#include("rss.jl")

end # module
