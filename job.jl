using JLD

cd("/scratch/st-tdjc-1/naitong-demo")

coef = nothing

if size(ARGS,1) > 0
    coef = parse(Int, ARGS[1])
else
    coef = 100,
end

coef_times_vector = coef * ones(5)

if size(ARGS,1) > 0
    JLD.save("dat_"*string(coef)*".jld", "v", coef_times_vector)
else
    JLD.save("dat.jld", "v", coef_times_vector)
end