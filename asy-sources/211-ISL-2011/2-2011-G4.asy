pair A = dir(110);
pair B = dir(210);
pair C = dir(-30);
pair O = (0, 0);
circle u_c = circle(A, B, C);
pair A_0 = (B+C)/2;
pair B_0 = (A+C)/2;
pair C_0 = (A+B)/2;
pair D = foot(A, B, C);
pair G = (A+B+C)/3;
pair X = intersectionpoints(u_c, line(G, D))[0];
pair Y = intersectionpoints(u_c, line(G, D))[1];
pair K = foot(A_0, B_0, C_0);

draw(A--B--C--cycle, blue);
draw(B_0--C_0);

dot("$A$", A, dir(100));
dot("$B$", B, dir(210));
dot("$C$", C, dir(-30));
dot("$O$", O, dir(0));
dot("$A_0$", A_0, dir(-90));
dot("$B_0$", B_0, dir(0));
dot("$C_0$", C_0, dir(180));
dot("$D$", D, dir(-90));
dot("$G$", G, dir(180));
dot("$X$", X, dir(-110));
dot("$Y$", Y, dir(90));
dot("$K$", K, dir(90));

/*
    Source: ISL 2011 G4
    Points: A B C O A_0 B_0 C_0 D G X Y K
    Item: A B X C Y
    Item: A_0 O K
    Item: X D G K Y
    Item: C A_0 B_0 O
    Item: B A_0 C_0 O
    Item: A B_0 C_0 O
    Item: A_0 B_0 C_0 D
    Item: A G A_0
    Item: B G B_0
    Item: C G C_0
    Text: $A_0$ is the midpoint of $BC$
    Text: $O$ is the circumcenter of $\triangle ABC$
    Text: $K$ is the foot from $A_0$ on $B_0C_0$
    Text: $Y$ is point such that $ABCY$ is an isosceles trapezoid
*/
