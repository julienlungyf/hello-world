%expect 0
%precedence "."
%precedence "proc"
%define lr.type canonical-lr
%precedence "macro"
%precedence ";"
%%
E:
  "proc" P "."
| "proc" P ";"
| "macro" P "."
| "macro" P ";"
P:
 "id"
;
%%
