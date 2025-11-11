N := 13;
m := 7;

G := Units(Integers mod m);
subgroups_list := AllSubgroups(G);

File := OutputTextFile("normal_q5_output.txt", false);
PrintTo(File, "m = ", m, "\n");
PrintTo(File, "subgroups = ", subgroups_list, "\n");

CloseStream(File);
QUIT;