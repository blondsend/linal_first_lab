N = 13

r = [(i + N) % 11 for i in range(8)]
s = [(i + N) % 11 for i in range(4)]

F11 = GF(11)
R.<x> = PolynomialRing(F11)

f = sum(r[i] * x^i for i in range(8))
g = sum(s[i] * x^i for i in range(4))

gcd_poly, u, v = xgcd(f, g)

verification = u*f + v*g

with open("poly_3_output.txt", "w") as file:
    file.write(f"f = {f}\n")
    file.write(f"g = {g}\n")
    file.write(f"gcd = {gcd_poly}\n")
    file.write(f"u = {u}\n")
    file.write(f"v = {v}\n")
    file.write(f"verification = {verification} (should equal gcd)\n")