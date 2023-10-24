### A Pluto.jl notebook ###
# v0.19.27

#> [frontmatter]
#> title = "Julia for Data Analysis"
#> date = "2023-10-23"
#> description = "Chapter 2 walkthrough"

using Markdown
using InteractiveUtils

# ╔═╡ eefb1ca8-907c-4416-a903-77ee81d03de0
md"""
# Julia for Data Analysis >> Chapter 2
"""

# ╔═╡ 879d695e-7204-11ee-2045-a905514f0865
md"""
## Chapter 2.1:
### Representing Values
"""

# ╔═╡ e1f24cbe-e844-4feb-bd08-305ca5306468
1

# ╔═╡ 64266d37-b392-4ac3-9a16-4f523a79461e
true

# ╔═╡ d906d187-aa58-4071-bf17-d267e634bf4e
"Hello World!"

# ╔═╡ d37d53a7-19d1-48ef-9122-28c88104381e
0.1

# ╔═╡ a15db7a7-e7cb-4c65-b628-8c0f0f7ae4ea
[1,2,3]

# ╔═╡ d75be30a-e94f-4e37-9b39-b243ba7586a4
typeof(1)

# ╔═╡ fe1c3d30-1409-449d-bc71-e243821da330
typeof(true)

# ╔═╡ 59a4d78f-b6ec-4c97-8fd8-b6654485f26e
typeof("Hello World!")

# ╔═╡ 0fac831a-11bf-41ef-9a60-43707d3abe1f
typeof(0.1)

# ╔═╡ d8239b24-b936-491f-864d-e76c850bcbfc
typeof([1,2,3])

# ╔═╡ ed20cc26-225d-465c-995e-b6685b203613
bitstring(1)

# ╔═╡ 61ab3df4-1334-4ca6-869e-ad74cdb2424e
bitstring(1.0)

# ╔═╡ 72c5dd04-a364-4d68-b136-a737749ab86a
bitstring(Int8(1))

# ╔═╡ ac290036-b530-49dd-9451-d9329034ad21
[1,2,3] isa Vector{Int}

# ╔═╡ f574ab3f-bed4-4a58-8e88-8684996f42ed
[1,2,3] isa Array{Int64,1}

# ╔═╡ c9625d56-0d19-4d7f-ba60-c9dd754964c9
md"""
## Chapter 2.2: 
### Defining Variables
"""

# ╔═╡ 432b8d3b-4bcd-456b-9b82-f2e4c0df4c2d
# ╠═╡ disabled = true
#=╠═╡
y = [1,2,3]
  ╠═╡ =#

# ╔═╡ cf4a3370-3b89-49b1-8a38-f0b54bf7a1cb
ε = 0.1

# ╔═╡ 77c0b408-b604-474e-a855-31ddc8eeab7b
typeof(ε)

# ╔═╡ fb60dbeb-5c5f-4cfe-9308-a7336e1b19c1
md"""
To type specialty symbols within Julia, use the following syntax:

`\varepsilon<tab>`
or
`\_1<tab>`
"""

# ╔═╡ 672ae74a-0349-43d2-9d76-c77e5158bd03
md"""
## Chapter 2.3: 
### Using the most important control-flow constructs

- Conditional Evaluation
- Loops
- Compound Expressions
"""

# ╔═╡ 01b6ef57-5859-4698-aaab-8d142d3a42cf
md"""
---
### Chapter 2.3.1:
#### Boolean Conditions
---
"""

# ╔═╡ f1f33008-b53a-453b-b0b0-ec8dfe7f4242
md"""
##### The Conditional Expression
"""

# ╔═╡ c89fc2b6-f30b-4a2e-b779-3335e7ed77fa
md"""
---
##### Rules for comparing floating point numbers
"""

# ╔═╡ 28972220-0c05-4aa8-8ce7-365fd05cfeca
NaN > 0

# ╔═╡ f829596d-5024-4745-bf56-50f3b00f25da
NaN >= 0

# ╔═╡ 2eefb1da-1968-441e-88ec-8a707e44ebfa
NaN < 0

# ╔═╡ 1d0e2834-1948-4ff3-9268-278120171882
NaN <= 0

# ╔═╡ 7a58657f-bb85-441d-b827-b8f3a53f4ab8
NaN == 0

# ╔═╡ 147647d8-4e27-4746-8421-6b0877dcc137
NaN != 0

# ╔═╡ 49ec8a16-bce7-44da-96d8-d8dfc3854575
NaN != NaN

# ╔═╡ 2fa820d2-3b43-4597-8b3c-bf0440cc5eb3
md"""
---
##### Inexact floating point numbers
"""

# ╔═╡ f070651b-a072-4755-b919-7b8023c845a6
0.1 + 0.2 == 0.3

# ╔═╡ 6c84e3fa-6c5c-4796-82ff-418af178b934
0.1 + 0.2 === 0.3

# ╔═╡ e05eb51d-24d9-4cbe-98f8-1e5436039d0a
0.1 + 0.2

# ╔═╡ 627b8272-1122-4474-938b-950236396f0b
isapprox(0.1+0.2, 0.3)

# ╔═╡ 66cd53dd-68ab-4174-ba93-59084c847da0
md"""
This symbol is achieved by using `\approx`
"""

# ╔═╡ 8def0098-71ec-4c54-b637-7ed3209ccd50
0.1 + 0.2 ≈ 0.3

# ╔═╡ 44325046-4cb5-46e2-95f0-c31014bc108d
md"""
---
##### Combining multiple logical conditions 
"""

# ╔═╡ 3f1bde31-5f9b-4de8-9a84-9dde61e5385a
md"""
---
##### Short-circuit evaluation
"""

# ╔═╡ 81936707-7e0e-4d04-941d-444519eb666c
md"""
The below code blocks operate as single line conditional evaluations.

These are essentially single line "if" statements for simple conditions.
"""

# ╔═╡ 08c6e372-93c9-4ac2-9d22-b1122af1ae48
md"""
Here are the "if" statement counterparts to the above:
"""

# ╔═╡ f77b4e1c-b68e-4b90-ba19-99f55be813e8
md"""
---
##### Ternary Operator
"""

# ╔═╡ 281d93e4-c421-4865-a94d-4a5399500e3e
md"""
is the same as writing
"""

# ╔═╡ 75b8c399-c0d7-40a6-9947-2d183c184c28
md"""
---
##### Conditional expressions return a value
"""

# ╔═╡ b490645e-1585-4e2f-88fb-d9bd7e9360dc
x_ce = -4

# ╔═╡ 3a8c7607-b3d9-457c-a917-80ffb20e7dcc
y_ce = if x_ce > 0
		sqrt(x_ce)
	else
		sqrt(-x_ce)
	end

# ╔═╡ edb0ea68-ee59-49b5-90e2-53a2b1bd2557
y_ce

# ╔═╡ 552008d5-9c77-4785-9395-da90c53896ce
x_ce2 = 9.0

# ╔═╡ 0ab02521-7191-4312-997e-0760c230cf78
y_ce2 = x_ce2 > 0 ? sqrt(x_ce2) : sqrt(-x_ce2)

# ╔═╡ fd687465-1cee-4432-9a79-ba16506a84ee
y_ce2

# ╔═╡ ea5c12cb-eab6-4136-aa2d-e16c07e6efa4
md"""
---
### Chapter 2.3.2:
#### Loops
---
"""

# ╔═╡ 0c531e81-5d19-4359-98d1-8634dc27eac9
md"""
###### Defining `for` loops:
"""

# ╔═╡ ce940c12-bd88-454c-a29b-22d96c9809b1
for i in [1,2,3]
	println(i, " is ", isodd(i) ? "odd" : "even")
end

# ╔═╡ cfc4bc8a-9d65-43bc-ad0b-6f66ad15dc52
md"""
###### Defining `while` loops:
"""

# ╔═╡ ac43542d-fae8-42e6-90e7-aa34a066436d
md"""
---
### Chapter 2.3.3:
#### Compound Expressions
---
"""

# ╔═╡ d026ed5d-3b56-425c-bc00-7fb8c7fdf8ad
x

# ╔═╡ 3534a7f7-8aab-4ca1-b1aa-4c65fd381101
typeof(x)

# ╔═╡ a2ef9b8a-49c8-4452-b812-5a4b039414c0
x

# ╔═╡ cfdbd954-ec36-45d4-b3a6-5b4770225ad1
typeof(x)

# ╔═╡ 9e466f75-aa2c-4336-91b2-271476b5118b
if x > 0
	println("positive")
elseif x < 0
	println("negative")
elseif x == 0
	println("zero")
else
	println("unexpected condition")
end

# ╔═╡ 3e085ad1-947e-40b0-895a-fef13a24c205
if x
	println("condition is true")
end

# ╔═╡ 21365b96-4455-4c95-9447-f81f0d98870d
x > 0 && x < 10

# ╔═╡ 5b93ead0-48c7-4633-82d2-049279966b1a
x < 0 || log(x) > 10

# ╔═╡ 9d65f722-ecbe-48fe-8dca-ec486520709c
x > 0 && println(x)

# ╔═╡ 468c357b-db27-48e2-941b-945e7599a180
if x > 0
	println(x)
end

# ╔═╡ 8aef2830-4e67-4412-960a-9fc1bbeda1ab
x > 0 || println(x)

# ╔═╡ c59c035a-4814-4680-ade1-13240019c863
if !(x > 0)
	println(x)
end

# ╔═╡ 92249497-2fc0-47c0-80e3-963272bcefcd
x < 0 && println(x^2)

# ╔═╡ e91c9d8d-483e-4650-92c7-f62be0f95991
iseven(x) || println("x is odd")

# ╔═╡ 592de965-d1a9-4f38-b425-1d289aa8847d
if x < 0
	println(x^2)
end

# ╔═╡ 46e934ca-2fec-45b0-89af-fd27624a249e
if !iseven(x)
	println("x is odd")
end

# ╔═╡ c6ed3b74-45e2-4eda-a540-276a82574ca8
x > 0 ? sqrt(x) : sqrt(-x)

# ╔═╡ ec19568b-1ee8-4ca6-8c86-86dd6a7c12a8
if x > 0
	sqrt(x)
else
	sqrt(-x)
end

# ╔═╡ ae1ac826-052f-4bf8-8976-2e04cf51168e
x > 0 ? println("x is positive") : println("x is not positive") 

# ╔═╡ 56aa620f-40e2-4aac-b197-1501b8976fc9


# ╔═╡ 00d2537c-6086-4eb1-a749-9191da532d14


# ╔═╡ 26e2ea68-9eee-490a-8ed8-bca3eeb632c4


# ╔═╡ 57dc4a55-48a6-4429-8fd8-d7d035e0313d
begin
	i = 0
	while true
		global i += 1
		i > 6 && break
		isodd(i) && continue
		println(i, " is even")
	end
end

# ╔═╡ b569791c-30c9-4c52-9154-bf3593cf7d72
# ╠═╡ disabled = true
#=╠═╡
begin
	i = 1
	while i < 4
		println(i, " is ", isodd(i) ? "odd" : "even")
		global i += 1
	end
end
  ╠═╡ =#

# ╔═╡ 78987540-9a74-4dc8-aa3a-b75b4fbeaa24
# ╠═╡ disabled = true
#=╠═╡
x = 0.1
  ╠═╡ =#

# ╔═╡ b46bc92b-3bbc-45d8-907b-f6d9eab3962b
# ╠═╡ disabled = true
#=╠═╡
x = -7
  ╠═╡ =#

# ╔═╡ e2d18038-451a-4d20-897f-ae2fa25ce5de
# ╠═╡ disabled = true
#=╠═╡
x = -7
  ╠═╡ =#

# ╔═╡ e7879ba8-cef0-4b66-aaf1-3976e667c36b
# ╠═╡ disabled = true
#=╠═╡
x = 1
  ╠═╡ =#

# ╔═╡ 5a5bf19b-6817-4f64-a3e0-c42710827704
begin
	x = -7
	x < 0 && begin
		println(x)
		x += 1
		println(x)
		2 * x
	end
end

# ╔═╡ 8ba452ec-2b42-4176-a23f-8a0df3716515
# ╠═╡ disabled = true
#=╠═╡
x = -7
  ╠═╡ =#

# ╔═╡ 407964a5-cea5-45e5-a7ef-9554144e94c6
# ╠═╡ disabled = true
#=╠═╡
x > 0 ? (println(x); x) : (x += 1; println(x); x)
  ╠═╡ =#

# ╔═╡ Cell order:
# ╠═eefb1ca8-907c-4416-a903-77ee81d03de0
# ╟─879d695e-7204-11ee-2045-a905514f0865
# ╠═e1f24cbe-e844-4feb-bd08-305ca5306468
# ╠═64266d37-b392-4ac3-9a16-4f523a79461e
# ╠═d906d187-aa58-4071-bf17-d267e634bf4e
# ╠═d37d53a7-19d1-48ef-9122-28c88104381e
# ╠═a15db7a7-e7cb-4c65-b628-8c0f0f7ae4ea
# ╠═d75be30a-e94f-4e37-9b39-b243ba7586a4
# ╠═fe1c3d30-1409-449d-bc71-e243821da330
# ╠═59a4d78f-b6ec-4c97-8fd8-b6654485f26e
# ╠═0fac831a-11bf-41ef-9a60-43707d3abe1f
# ╠═d8239b24-b936-491f-864d-e76c850bcbfc
# ╠═ed20cc26-225d-465c-995e-b6685b203613
# ╠═61ab3df4-1334-4ca6-869e-ad74cdb2424e
# ╠═72c5dd04-a364-4d68-b136-a737749ab86a
# ╠═ac290036-b530-49dd-9451-d9329034ad21
# ╠═f574ab3f-bed4-4a58-8e88-8684996f42ed
# ╟─c9625d56-0d19-4d7f-ba60-c9dd754964c9
# ╠═e7879ba8-cef0-4b66-aaf1-3976e667c36b
# ╠═432b8d3b-4bcd-456b-9b82-f2e4c0df4c2d
# ╠═d026ed5d-3b56-425c-bc00-7fb8c7fdf8ad
# ╠═3534a7f7-8aab-4ca1-b1aa-4c65fd381101
# ╠═78987540-9a74-4dc8-aa3a-b75b4fbeaa24
# ╠═a2ef9b8a-49c8-4452-b812-5a4b039414c0
# ╠═cfdbd954-ec36-45d4-b3a6-5b4770225ad1
# ╠═cf4a3370-3b89-49b1-8a38-f0b54bf7a1cb
# ╠═77c0b408-b604-474e-a855-31ddc8eeab7b
# ╟─fb60dbeb-5c5f-4cfe-9308-a7336e1b19c1
# ╟─672ae74a-0349-43d2-9d76-c77e5158bd03
# ╟─01b6ef57-5859-4698-aaab-8d142d3a42cf
# ╟─f1f33008-b53a-453b-b0b0-ec8dfe7f4242
# ╠═8ba452ec-2b42-4176-a23f-8a0df3716515
# ╠═9e466f75-aa2c-4336-91b2-271476b5118b
# ╠═3e085ad1-947e-40b0-895a-fef13a24c205
# ╟─c89fc2b6-f30b-4a2e-b779-3335e7ed77fa
# ╠═28972220-0c05-4aa8-8ce7-365fd05cfeca
# ╠═f829596d-5024-4745-bf56-50f3b00f25da
# ╠═2eefb1da-1968-441e-88ec-8a707e44ebfa
# ╠═1d0e2834-1948-4ff3-9268-278120171882
# ╠═7a58657f-bb85-441d-b827-b8f3a53f4ab8
# ╠═147647d8-4e27-4746-8421-6b0877dcc137
# ╠═49ec8a16-bce7-44da-96d8-d8dfc3854575
# ╟─2fa820d2-3b43-4597-8b3c-bf0440cc5eb3
# ╠═f070651b-a072-4755-b919-7b8023c845a6
# ╠═6c84e3fa-6c5c-4796-82ff-418af178b934
# ╠═e05eb51d-24d9-4cbe-98f8-1e5436039d0a
# ╠═627b8272-1122-4474-938b-950236396f0b
# ╟─66cd53dd-68ab-4174-ba93-59084c847da0
# ╠═8def0098-71ec-4c54-b637-7ed3209ccd50
# ╟─44325046-4cb5-46e2-95f0-c31014bc108d
# ╠═e2d18038-451a-4d20-897f-ae2fa25ce5de
# ╠═21365b96-4455-4c95-9447-f81f0d98870d
# ╠═5b93ead0-48c7-4633-82d2-049279966b1a
# ╟─3f1bde31-5f9b-4de8-9a84-9dde61e5385a
# ╠═9d65f722-ecbe-48fe-8dca-ec486520709c
# ╠═468c357b-db27-48e2-941b-945e7599a180
# ╠═8aef2830-4e67-4412-960a-9fc1bbeda1ab
# ╠═c59c035a-4814-4680-ade1-13240019c863
# ╟─81936707-7e0e-4d04-941d-444519eb666c
# ╠═92249497-2fc0-47c0-80e3-963272bcefcd
# ╠═e91c9d8d-483e-4650-92c7-f62be0f95991
# ╟─08c6e372-93c9-4ac2-9d22-b1122af1ae48
# ╠═592de965-d1a9-4f38-b425-1d289aa8847d
# ╠═46e934ca-2fec-45b0-89af-fd27624a249e
# ╟─f77b4e1c-b68e-4b90-ba19-99f55be813e8
# ╠═c6ed3b74-45e2-4eda-a540-276a82574ca8
# ╟─281d93e4-c421-4865-a94d-4a5399500e3e
# ╠═ec19568b-1ee8-4ca6-8c86-86dd6a7c12a8
# ╠═ae1ac826-052f-4bf8-8976-2e04cf51168e
# ╟─75b8c399-c0d7-40a6-9947-2d183c184c28
# ╠═b490645e-1585-4e2f-88fb-d9bd7e9360dc
# ╠═3a8c7607-b3d9-457c-a917-80ffb20e7dcc
# ╠═edb0ea68-ee59-49b5-90e2-53a2b1bd2557
# ╠═552008d5-9c77-4785-9395-da90c53896ce
# ╠═0ab02521-7191-4312-997e-0760c230cf78
# ╠═fd687465-1cee-4432-9a79-ba16506a84ee
# ╟─ea5c12cb-eab6-4136-aa2d-e16c07e6efa4
# ╟─0c531e81-5d19-4359-98d1-8634dc27eac9
# ╠═ce940c12-bd88-454c-a29b-22d96c9809b1
# ╟─cfc4bc8a-9d65-43bc-ad0b-6f66ad15dc52
# ╠═b569791c-30c9-4c52-9154-bf3593cf7d72
# ╠═57dc4a55-48a6-4429-8fd8-d7d035e0313d
# ╟─ac43542d-fae8-42e6-90e7-aa34a066436d
# ╠═5a5bf19b-6817-4f64-a3e0-c42710827704
# ╠═b46bc92b-3bbc-45d8-907b-f6d9eab3962b
# ╠═407964a5-cea5-45e5-a7ef-9554144e94c6
# ╠═56aa620f-40e2-4aac-b197-1501b8976fc9
# ╠═00d2537c-6086-4eb1-a749-9191da532d14
# ╠═26e2ea68-9eee-490a-8ed8-bca3eeb632c4
