#!julia
using SimilarityNetworkFusion, Test
# include("../src/SimilarityNetworkFusion.jl")
# #using SimilarityNetworkFusion
# using Base.Test

tests = ["testSNF",
         "testOthers"]

# tic() # tic toc is deprecated, try using @time or @elapsed
println("Runing tests:")
for t in tests
         fp = "$(t).jl"
         println("* $fp ...")
         @time @test include(fp)
         # include(fp)
end
# @time @test include("testSNF.jl")
# @time @test include("testOthers.jl")
# toc()
