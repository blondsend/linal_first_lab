N := 13;
m := 7;
n1 := 1;
n2 := 2; 
n3 := 3;

G := SymmetricGroup(m);
elements := Elements(G);
g_index := (N mod Size(G)) + 1;
g := elements[g_index];

g1 := g^n1;
g2 := g^n2;
g3 := g^n3;

File := OutputTextFile("normal_q2.txt", false);
PrintTo(File, "g = ", g, "\n");
PrintTo(File, "order_g = ", Order(g), "\n");
PrintTo(File, "g1 = ", g1, "\n");
PrintTo(File, "order_g1 = ", Order(g1), "\n");
PrintTo(File, "g2 = ", g2, "\n");
PrintTo(File, "order_g2 = ", Order(g2), "\n");
PrintTo(File, "g3 = ", g3, "\n");
PrintTo(File, "order_g3 = ", Order(g3), "\n");

CloseStream(File);
QUIT;