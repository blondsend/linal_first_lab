N := 13;
m := 7;

G := Units(Integers mod m);

generators := [];
for g in G do
    if Order(g) = Size(G) then
        Add(generators, Int(g));
    fi;
od;

File := OutputTextFile("normal_q8_output.txt", false);
PrintTo(File, "m = ", m, "\n");
PrintTo(File, "generators = ", generators, "\n");
CloseStream(File);
QUIT;