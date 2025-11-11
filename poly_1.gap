N := 13;

# F_4 with proper representation
F4 := GF(4);
a := GeneratorsOfField(F4)[1];  # a is the primitive element

# Coefficients for F4 polynomial: 0->0, 1->1, 2->a+1, 3->a
coeffs_F4 := [1, 2, 3, 0, 1, 2, 3, 0, 1];
coeffs_F4_converted := [];
for c in coeffs_F4 do
    if c = 0 then
        Add(coeffs_F4_converted, Zero(F4));
    elif c = 1 then
        Add(coeffs_F4_converted, One(F4));
    elif c = 2 then
        Add(coeffs_F4_converted, a + One(F4));
    else
        Add(coeffs_F4_converted, a);
    fi;
od;

x := Indeterminate(F4);
poly_F4 := x^9;
for i in [0..8] do
    poly_F4 := poly_F4 + coeffs_F4_converted[i+1] * x^i;
od;

roots_F4 := RootsOfUPol(F4, poly_F4);

# F_7 polynomial
F7 := GF(7);
coeffs_F7 := [6, 0, 1, 2, 3, 4, 5];

y := Indeterminate(F7);
poly_F7 := Zero(y);
for j in [0..6] do
    poly_F7 := poly_F7 + coeffs_F7[j+1] * y^j;
od;

roots_F7 := RootsOfUPol(F7, poly_F7);

File := OutputTextFile("poly_1_output.txt", false);
PrintTo(File, "polynomial_F4 = ", poly_F4, "\n");
PrintTo(File, "roots_F4 = ", roots_F4, "\n");
PrintTo(File, "polynomial_F7 = ", poly_F7, "\n");  
PrintTo(File, "roots_F7 = ", roots_F7, "\n");
CloseStream(File);
QUIT;