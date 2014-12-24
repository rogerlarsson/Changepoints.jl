# Check ChangepointSampler works for different distributions

num_samples = 1000
λ = 50                 # Frequency of changes

println("Running ChangepointSampler tests...")

# Normal mean change sampler
μ = Normal(1.0, 1.0)
σ = 1.0
Y = ChangepointSampler(()->Normal(rand(μ), σ), λ)
rand(Y, num_samples)

# Normal variance change sampler
μ = 1.0
σ = Uniform(2.0, 15.0)
Y = ChangepointSampler(()->Normal(μ, rand(σ)), λ)
sample = rand(Y, num_samples)
