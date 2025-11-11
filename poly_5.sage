def generate_irreducible_polynomials(q, d):
    F = GF(q)
    R.<x> = PolynomialRing(F)
    
    monic_polys = []
    for coeffs in cartesian_product([F for _ in range(d)]):
        poly = x^d + sum(coeffs[i] * x^(d-1-i) for i in range(d))
        monic_polys.append(poly)
    
    divisors_list = []
    for k in range(1, d//2 + 1):
        for coeffs_k in cartesian_product([F for _ in range(k)]):
            poly_k = x^k + sum(coeffs_k[i] * x^(k-1-i) for i in range(k))
            if poly_k.is_irreducible():
                divisors_list.append(poly_k)
    
    irreducible_d = []
    for poly in monic_polys:
        is_irred = True
        for div in divisors_list:
            if poly % div == 0:
                is_irred = False
                break
        if is_irred:
            irreducible_d.append(poly)
    
    return irreducible_d

# Tests
for q in [2, 3, 5]:
    for d in [2, 3, 4]:
        print(f"q = {q}, d = {d}:")
        irr = generate_irreducible_polynomials(q, d)
        for p in irr:
            print(" ", p)
        print("Count:", len(irr))
        print("---")