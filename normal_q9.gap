N := 13;
m := 7;
t := 12;

G := Integers mod m;

d := Gcd(t, m);

subgroup_elements := [];
for k in [0..m-1] do
    if (k mod d) = 0 then
        Add(subgroup_elements, k);
    fi;
od;

subgroup_order := Length(subgroup_elements);

generators := [];
for g in subgroup_elements do
    if g > 0 and Gcd(g, m) = d then
        Add(generators, g);
    fi;
od;

File := OutputTextFile("normal_q9_output.txt", false);
PrintTo(File, "m = ", m, "\n");
PrintTo(File, "t = ", t mod m, "\n");
PrintTo(File, "subgroup_order = ", subgroup_order, "\n");
PrintTo(File, "subgroup_elements = ", subgroup_elements, "\n");
PrintTo(File, "generators = ", generators, "\n");
CloseStream(File);
QUIT;