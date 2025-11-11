N := 13;

c := List([0..4], i -> (i + N) mod 5);
F5 := GF(5);
x := Indeterminate(F5);
poly_F5 := x^5 + Sum([0..4], i -> c[i+1] * x^i);

factors_F5 := Factors(poly_F5);
is_irreducible_F5 := Length(factors_F5) = 1;

d := List([0..3], i -> (i + N) mod 9);
F9 := GF(9);
y := Indeterminate(F9);
poly_F9 := y^4 + Sum([0..3], i -> d[i+1] * y^i);

factors_F9 := Factors(poly_F9);
is_irreducible_F9 := Length(factors_F9) = 1;

File := OutputTextFile("poly_2_output.txt", false);
PrintTo(File, "poly_F5 = ", poly_F5, "\n");
PrintTo(File, "is_irreducible_F5 = ", is_irreducible_F5, "\n");
PrintTo(File, "factors_F5 = ", factors_F5, "\n");
PrintTo(File, "poly_F9 = ", poly_F9, "\n");
PrintTo(File, "is_irreducible_F9 = ", is_irreducible_F9, "\n");
PrintTo(File, "factors_F9 = ", factors_F9, "\n");
CloseStream(File);
QUIT;