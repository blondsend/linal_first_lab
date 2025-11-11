N := 13;
m := 7;
k := 7;

G := CyclicGroup(m);
elements := Elements(G);

elements_satisfying := Filtered(elements, g -> g^k = Identity(G));

elements_of_order_k := Filtered(elements, g -> Order(g) = k);

File := OutputTextFile("normal_q4_output.txt", false);
PrintTo(File, "m = ", m, "\n");
PrintTo(File, "k = ", k, "\n");
PrintTo(File, "elements_satisfying_g^k=e = ", elements_satisfying, "\n");
PrintTo(File, "elements_of_order_k = ", elements_of_order_k, "\n");

CloseStream(File);
QUIT;