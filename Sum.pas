var
  a:array[1..100] of longint;
  incs:longint;
  ans:qword;
begin
  writeln('Please input some numbers, if you finish then key in ENTER.');
  ans:=0;
  incs:=0;
  while not eoln do
    begin
      inc(incs);
      read(a[incs]);
      ans:=ans+a[incs];
    end;
  writeln('the sum of numbers is:',ans);
end.
