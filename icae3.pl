

%2
word(d,o,g).
word(r,u,n).
word(t,o,p).
word(f,i,v,e).
word(f,o,u,r).
word(l,o,s,t).
word(m,e,s,s).
word(u,n,i,t).
word(b,a,k,e,r).
word(f,o,r,u,m).
word(g,r,e,e,n).
word(s,u,p,e,r).
word(p,r,o,l,o,g).
word(v,a,n,i,s,h).
word(w,o,n,d,e,r).
word(y,e,l,l,o,w).

crossword(L1,L2,L3,L4,L5,L6,L7,L8,L9,L10,L11,L12,L13,L14,L15,L16):-
    word(L1,L2,L3,L4,L5),
    word(L9,L10,L11,L12,L13,L14),
    word(L1,L6,L9,L15),
    word(L3,L7,L11),
    word(L5,L8,L13,L16).


%1
color(red).
color(green).
color(yellow).

adjacent(north,west).
adjacent(north,central).
adjacent(north,east).
adjacent(west,central).
adjacent(west,south).
adjacent(central,east).
adjacent(central,south).
adjacent(east,south).

color_map(North,South,Central,West,East):-
    color(North),color(South),color(Central),color(West),color(East),
    North\=West,
    North\=Central,
    North\=East,
    West\=Central,
    West\=South,
    Central\=East,
    Central\=South,
    East\=South.
