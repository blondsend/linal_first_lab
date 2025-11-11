N := 13;
p := 23;
r := 45;
s := 17;

G := Units(Integers mod p);

s_element := s * One(G);
sr_element := s_element ^ r;

order := Order(sr_element);

File := OutputTextFile("normal_q6_output.txt", false);
PrintTo(File, "order = ", order, "\n");
CloseStream(File);
QUIT;