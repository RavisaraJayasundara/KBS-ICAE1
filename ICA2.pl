grade(Score,'A+',4.0):-Score>=80.
grade(Score,'A',4.0):-Score>=75,Score<80.
grade(Score,'A-',3.7):-Score>=70,Score<75.
grade(Score,'B+',3.3):-Score>=65,Score<70.
grade(Score,'B',3.0):-Score>=60,Score<55.
grade(Score,'B-',2.7):-Score>=55,Score<60.
grade(Score,'C+',2.3):-Score>=50,Score<55.
grade(Score,'C',2.0):-Score>=45,Score<50.
grade(Score,'C-',1.7):-Score>=40,Score<45.
grade(Score,'D+',1.3):-Score>=35,Score<40.
grade(Score,'D',1.0):-Score>=30,Score<35.
grade(Score,'E',0.0):-Score>=0,Score<30.

class(Grade_Point,'First_class'):-Grade_Point>=3.7.
class(Grade_Point,'Second_upper'):-Grade_Point>=3.3,Grade_Point<3.7.
class(Grade_Point,'Second_lower'):-Grade_Point>=3.0,Grade_Point<3.3.
class(Grade_Point,'Pass'):-Grade_Point>=2.0,Grade_Point<3.0.
class(Grade_Point,'Fail'):-Grade_Point<2.0.


grade_list([],[]).
grade_list([SH|ST],[GH|GT]):-grade(SH,GH,_),grade_list(ST,GT).

grade_value_list([],[]).
grade_value_list([SH|ST],[GVH|GVT]):-grade(SH,_,GVH),grade_value_list(ST,GVT).
