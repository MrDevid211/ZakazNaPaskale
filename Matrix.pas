const n=3;
      A:array[1..n+1,1..n+1]of integer=((2,5,3,3),(5,4,3,5),(9,3,8,7),(5,4,3,5));
      B:array[1..n+1,1..n+1]of integer=((6,5,5,4),(9,3,2,4),(3,1,2,4),(6,5,5,4));
      D:array[1..n+1,1..n+1]of integer=((4,2,6,7),(2,1,7,4),(2,4,5,7),(3,2,3,5));
      C:array[1..n+1,1..n+1]of integer=((2,6,7,3),(3,5,8,5),(0,3,8,3),(9,1,0,1));
var w:array[1..n+1,1..n+1]of integer;
var q:array[1..n+1,1..n+1]of integer;
var e:array[1..2,1..1]of integer=((10),(10));
    i,j,k:integer;
    
begin
writeln('Матрица A:');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(a[i,j]:3);
  writeln
 end;
 
writeln('Матрица B:');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(b[i,j]:3);
  writeln
 end;
 
writeln('Матрица D:');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(d[i,j]:3);
  writeln
 end;
 
writeln('Матрица C:');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(b[i,j]:3);
  writeln
 end;
 
for i:=1 to n+1 do
for j:=1 to n+1 do
 begin
  w[i,j]:=0;
  for k:=1 to n+1 do
  w[i,j]:=b[i,j]+b[i,j]+b[i,j]+a[i,j];
 end;
writeln('F=3B+A');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(w[i,j]:3);
  writeln;
 end;
 
for i:=1 to n+1 do
for j:=1 to n+1 do
 begin
  q[i,j]:=0;
  for k:=1 to n+1 do
  q[i,j]:= a[i,j];
 end;
 writeln('G=A/10');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(q[i,j] / 10 :3);
  writeln;
 end;
 
for i:=1 to n+1 do
for j:=1 to n+1 do
 begin
  q[i,j]:=0;
  for k:=1 to n+1 do
  q[i,j]:=c[i,j]*(d[i,j]*5);
 end;
 writeln('T=C*(5D)=');
for i:=1 to n+1 do
 begin
  for j:=1 to n+1 do
  write(q[i,j]:4);
  writeln;
 end;
end.

