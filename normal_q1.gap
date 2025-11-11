N := 13;
m := 7;

G := SymmetricGroup(m);
subs := AllSubgroups(G);
total := Length(subs);

# Random subgroup
random_index := Random([1..total]);
H_random := subs[random_index];

# Subgroup with index: N % total
H_index := (N mod total) + 1;
H_fixed := subs[H_index];

File := OutputTextFile("normal_q1_output.txt", false);

PrintTo(File, "total_subgroups = ", total, "\n");

PrintTo(File, "random_index = ", random_index, "\n");
PrintTo(File, "random_order = ", Size(H_random), "\n");
PrintTo(File, "random_generators = ", GeneratorsOfGroup(H_random), "\n");

PrintTo(File, "fixed_index = ", H_index, "\n");
PrintTo(File, "fixed_order = ", Size(H_fixed), "\n");
PrintTo(File, "fixed_index_in_G = ", Index(G, H_fixed), "\n");
PrintTo(File, "fixed_normal = ", IsNormal(G, H_fixed), "\n");
PrintTo(File, "fixed_generators = ", GeneratorsOfGroup(H_fixed), "\n");

PrintTo(File, "left_cosets_count = ", Index(G, H_fixed), "\n");
PrintTo(File, "right_cosets_count = ", Index(G, H_fixed), "\n");

left_cosets := LeftCosets(G, H_fixed);
right_cosets := RightCosets(G, H_fixed);

PrintTo(File, "left_cosets_example = [");
for i in [1..Minimum(3, Length(left_cosets))] do
    PrintTo(File, Elements(left_cosets[i]));
    if i < Minimum(3, Length(left_cosets)) then
        PrintTo(File, ", ");
    fi;
od;
PrintTo(File, "]\n");

PrintTo(File, "right_cosets_example = [");
for i in [1..Minimum(3, Length(right_cosets))] do
    PrintTo(File, Elements(right_cosets[i]));
    if i < Minimum(3, Length(right_cosets)) then
        PrintTo(File, ", ");
    fi;
od;
PrintTo(File, "]\n");

CloseStream(File);
QUIT;