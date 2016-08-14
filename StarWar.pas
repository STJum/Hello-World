{Produce By StupidJum.}

{  $Id:The Pascal Game of <<STAR WAR>>.
   V.1.0 Beta Start edit in 7.2016 Finish edit in 8.2016
   Copyright (c) 2016 by StupidJum.

   See then file COPYING.FPC, included in this distribution,
   for details about the copyright.

   This program is distributed all over TungWah Junior High School,
   hope that it will be useful, but WITHOUT ANY WARRANTY; without
   even the implied warranty of MERCHANTABILITY or FITNESS FOR A
   PARTICULAR PURPOSE.
                                                                     }

{ Copyright (c) 2016 THE GAME OF STARWAR. All rights reserved.       }

{                                Episode I
                           THE  PHANTOM  MENACE
            Turmoil has enguifed the Galactic Republic.The taxat-
         ion of trade routes to outlying star systems is in dispute.
      Hoping to resolve the matter with a blockade of deadly battleships,
   the greedy Trade Federation has stopped all shipping to the small planet
     of Naboo.  While the Congress of the Republic endlessly debates this
    alarming chain of events,the Supreme Chancellor has secretly dispatched
     two Jedi Knights,the guardians of peace and justice in the galaxy,to
                           settle the conflict....
}


USES CRT; //POWERED BY CRT

//CONST;

VAR
  {    This value is control RE_DO     }
  i                                         :longint;
  {    Important values(do not delete) }
  Mode1,Mode2,Mode3,Mode4,S,l1,l2,l3        :string;

PROCEDURE Init;

  BEGIN
    assign(input,'STARWAR.data');
    assign(output,'STARWAR.data');
    reset(input);
    rewrite(output);
  END;

PROCEDURE Endinit;

  BEGIN
    close(input);
    close(output);
  END;

PROCEDURE Showword( word:string; speed:longint{ms});

  VAR
    i:longint;
  BEGIN
    for i:=1 to length(word) do
      begin
        write(word[i]);
        delay(speed);
      end;
  END;

PROCEDURE PrintA;

  BEGIN
    textcolor(8);
    normvideo;
    gotoxy(38,26);
    showword('Press "W" to up  "S" to down  "F" to Enter',3);
  END;

PROCEDURE Print1;

  BEGIN
    clrscr;
    highvideo;
    textcolor(yellow);
    delay(1000);
    gotoxy(1,25);
    writeln('                                  Episode I');
    delay(1000);
    writeln;
    writeln('                             THE  PHANTOM  MENACE');
    delay(1000);
    writeln;
    writeln('              Turmoil has enguifed the Galactic Republic.The taxat-');
    delay(1000);
    writeln;
    writeln('           ion of trade routes to outlying star systems is in dispute.');
    delay(1000);
    writeln;
    writeln('       Hoping to resolve the matter with a blockade of deadly battleships,');
    delay(1000);
    writeln;
    writeln('     the greedy Trade Federation has stopped all shipping to the small planet');
    delay(1000);
    writeln;
    writeln('       of Naboo.  While the Congress of the Republic endlessly debates this');
    delay(1000);
    writeln;
    writeln('     alarming chain of events,the Supreme Chancellor has secretly dispatched');
    delay(1000);
    writeln;
    writeln('      two Jedi Knights,the guardians of peace and justice in the galaxy,to');
    delay(1000);
    writeln;
    writeln('                             settle the conflict....');
    for I:=1 to (25 DIV 2)+2 do
      begin
        delay(1000);
        writeln;
        writeln;
      end;
  END;

PROCEDURE Loginto;

  BEGIN
    assign(input,'STARWAR.data');
    reset(input);

  END;

PROCEDURE Logindo;

  VAR
    ch:char;
    xy:longint;
    b:boolean;
  BEGIN
    xy:=10;
    repeat
      b:=keypressed;
      if b then
        begin
          ch:=readkey;
          if (ch='f') or (ch='F') then
            begin
              //if xy=10 then Loginto;
              //if xy=12 then Ct;
              if xy=14 then
                begin
                  clrscr;
                  textcolor(green);
                  highvideo;
                  gotoxy(40-length('=Back=') div 2,14);
                  writeln(l3);
                  delay(350);
                  exit;
                end;
            end;
          if (ch='S') or (ch='s') then
            begin
              if xy=14 then continue;
              if xy=10 then
                begin
                  gotoxy(40-length(l1) div 2,xy);
                  clreol;
                  textcolor(yellow);
                  lowvideo;
                  writeln(l1);
                  gotoxy(40-length(l2) div 2,xy+2);
                  xy:=xy+2;
                  highvideo;
                  clreol;
                  writeln(l2);
                  continue;
                end;
              if xy=12 then
                begin
                  gotoxy(40-length(l2) div 2,xy);
                  clreol;
                  textcolor(yellow);
                  lowvideo;
                  writeln(l2);
                  gotoxy(40-length(l3) div 2,xy+2);
                  xy:=xy+2;
                  highvideo;
                  clreol;
                  writeln(l3);
                  continue;
                end;
            end;
          if (ch='W') or (ch='w') then
            begin
              if xy=10 then continue;
              if xy=14 then
                begin
                  gotoxy(40-length(l3) div 2,xy);
                  clreol;
                  textcolor(yellow);
                  lowvideo;
                  writeln(l3);
                  gotoxy(40-length(l2) div 2,xy-2);
                  xy:=xy-2;
                  highvideo;
                  clreol;
                  writeln(l2);
                  continue;
                end;
              if xy=12 then
                begin
                  gotoxy(40-length(l2) div 2,xy);
                  clreol;
                  textcolor(yellow);
                  lowvideo;
                  writeln(l2);
                  gotoxy(40-length(l1) div 2,xy-2);
                  xy:=xy-2;
                  highvideo;
                  clreol;
                  writeln(l1);
                  continue;
                end;
            end;
        end;
    until ch='*';
  END;

PROCEDURE Login;

  BEGIN
    l1:='=Login=';
    l2:='=New=';
    l3:='=Back=';
    clrscr;
    textcolor(26);
    highvideo;
    gotoxy(40-length('=Login=') div 2,10);
    writeln(l1);
    delay(350);
    clrscr;
    delay(100);
    textcolor(yellow);
    gotoxy(40-length(l1) div 2,10);
    showword(l1,10);
    lowvideo;
    gotoxy(40-length(l2) div 2,12);
    showword(l2,10);
    gotoxy(40-length(l3) div 2,14);
    showword(l3,10);
    PrintA;
  END;

PROCEDURE Print0;

  BEGIN
    clrscr;
    textcolor(10);
    delay(1000);
    gotoxy(40-4,10);
    showword('STAR WAR',10);
    delay(1000);
    gotoxy(40-9,13);
    showword('Fighting, Warrior!',10);
    delay(2000);
  END;

PROCEDURE About;

  VAR
    s:string;
    ch:char;
    b:boolean;
  BEGIN
    clrscr;
    highvideo;
    textcolor(26);
    s:='=About it=';
    gotoxy((40-length(s) div 2),14);
    writeln(s);
    delay(350);
    clrscr;
    textcolor(31);
    showword('$Id:The Pascal Game of <<STAR WAR>>.',2);  writeln;
    showword('V.1.0 Beta Start edit in 7.2016 Finish edit in 8.2016',2);  writeln;
    showword('Copyright (c) 2016 by StupidJum.',2);  writeln;
    writeln;
    showword('See then file COPYING.FPC, included in this distribution,',2);  writeln;
    showword('for details about the copyright.',2);  writeln;
    writeln;
    showword('This program is distributed all over TungWah Junior High School,',2);  writeln;
    showword('hope that it will be useful, but WITHOUT ANY WARRANTY; without ',2);  writeln;
    showword('even the implied warranty of MERCHANTABILITY or FITNESS FOR A ',2);  writeln;
    showword('PARTICULAR PURPOSE. ',2);  writeln;
    writeln; writeln;
    showword('Copyright (c) 2016 STARWAR. All rights reserved.',2);  writeln;
    s:='=Continue=';
    textcolor(yellow);
    highvideo;
    gotoxy(40-length(s) div 2,25);
    showword(s,25);
    repeat
      b:=keypressed;
      if b then
        ch:=readkey;
        if (ch='F') or (ch='f') then
          begin
            clrscr;
            gotoxy(40-length(s) div 2,26);
            textcolor(26);
            writeln(s);
            delay(650);
            exit;
          end;
    until ch='*';
  END;

PROCEDURE Exit;

  VAR
    s:string;
  BEGIN
    clrscr;
    s:='=Exit=';
    gotoxy((40-length(s) div 2),16);
    textcolor(26);
    writeln(s);
    delay(1000);
    halt;
  END;

PROCEDURE Mode;

  BEGIN
    clrscr;
    gotoxy(40-4,5);
    highvideo;
    textcolor(10);
    showword('STAR WAR',20);
    delay(500);
    gotoxy(40+7,7);
    showword('Fighting, Warrior!',20);
    delay(500);
    Mode1:='=Login=';
    Mode2:='=Play without login=';
    Mode3:='=About it=';
    Mode4:='=Exit=';
    highvideo;
    textcolor(30);
    gotoxy(40-length(Mode1) div 2,10);
    showword(Mode1,10);
    delay(100);
    lowvideo;
    gotoxy(40-length(Mode2) div 2,12);
    showword(Mode2,10);
    delay(100);
    gotoxy(40-length(Mode3) div 2,14);
    showword(Mode3,10);
    delay(100);
    gotoxy(40-length(Mode4) div 2,16);
    showword(Mode4,10);
  END;

PROCEDURE Modedo;

  VAR
    ch:char;
    xy:longint;
    b:boolean;
  BEGIN
    xy:=10;
    repeat
      b:=keypressed;
      if b then
        begin
          textcolor(yellow);
          ch:=readkey;
          if (ch='F') or (ch='f') then
            case xy of
            10:begin Login; Logindo; Mode; PrintA; Modedo; end;
            //12:Start;
            14:begin About; Mode; PrintA; Modedo; end;
            16:Exit;
            end;
          if (ch='W') or (ch='w') then
            begin
              if xy=10 then continue;
              if xy=16 then
                begin
                  gotoxy(40-length(Mode4) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode4);
                  xy:=xy-2;
                  gotoxy(40-length(Mode3) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode3);
                  continue;
                end;
              if xy=14 then
                begin
                  gotoxy(40-length(Mode3) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode3);
                  xy:=xy-2;
                  gotoxy(40-length(Mode2) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode2);
                  continue;
                end;
              if xy=12 then
                begin
                  gotoxy(40-length(Mode2) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode2);
                  xy:=xy-2;
                  gotoxy(40-length(Mode1) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode1);
                  continue;
                end;
            end;
          if (ch='S') or (ch='s') then
            begin
              if xy=16 then continue;
              if xy=10 then
                begin
                  gotoxy(40-length(Mode1) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode1);
                  xy:=xy+2;
                  gotoxy(40-length(Mode2) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode2);
                  continue;
                end;
              if xy=12 then
                begin
                  gotoxy(40-length(Mode2) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode2);
                  xy:=xy+2;
                  gotoxy(40-length(Mode3) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode3);
                  continue;
                end;
              if xy=14 then
                begin
                  gotoxy(40-length(Mode3) div 2,xy);
                  clreol;
                  lowvideo;
                  writeln(Mode3);
                  xy:=xy+2;
                  gotoxy(40-length(Mode4) div 2,xy);
                  clreol;
                  highvideo;
                  writeln(Mode4);
                  continue;
                end;
            end;
        end;
    until ch='*';
  END;

BEGIN

  Cursoroff;
  Print0;
  Print1;
  Mode; PrintA;
  Modedo;

END.
