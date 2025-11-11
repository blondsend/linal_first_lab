N := 13;
m := 7;
n := 5;

G := SymmetricGroup(m);
target := (1,2,3,4,5,6);

all_elements := Elements(G);
solutions := Filtered(all_elements, x -> x^n = target);

File := OutputTextFile("normal_q3_output.txt", false);
PrintTo(File, "total_solutions = ", Length(solutions), "\n");
PrintTo(File, "solution = ", solutions[1], "\n");
CloseStream(File);
QUIT;