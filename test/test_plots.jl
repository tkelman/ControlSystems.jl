module TestPlots
using CustomTest
using ControlSystems, Plots
using VisualRegressionTests, ControlExamplePlots

default(show=false)

funcs, refs = getexamples()
res = genplots(funcs, refs, popup=false)

##Explicit enumeration for simpler debugging

#"bode.png"
@test  res[1] |> success
#"nyquist.png"
@test  res[2] |> success
#"sigma.png"
@test  res[3] |> success
#"nichols.png"
@test  res[4] |> success
#"step.png"
@test  res[5] |> success
#"impulse.png"
@test  res[6] |> success
#"lsim.png"
@test  res[7] |> success
end
