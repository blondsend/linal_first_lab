N := 13;
p := 23;
t := 12;

G := Units(Integers mod p);

t_element := t * One(G);
order := Order(t_element);

is_primitive := (order = Size(G));

File := OutputTextFile("normal_q7_output.txt", false);
PrintTo(File, "order = ", order, "\n");
PrintTo(File, "is_primitive = ", is_primitive, "\n");
CloseStream(File);
QUIT;