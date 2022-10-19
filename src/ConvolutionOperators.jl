module ConvolutionOperators

using LinearAlgebra


abstract type AbstractConvOp end

function Base.size(x::AbstractConvOp, i) size(x)[i] end
function Base.axes(x::AbstractConvOp) map(Base.OneTo, size(x)) end
function Base.axes(x::AbstractConvOp, i) axes(x)[i] end

include("companion.jl")

include("bandedconvop.jl")
include("linearcombinations.jl")
include("leftrightmul.jl")
include("liftedconvop.jl")


end
