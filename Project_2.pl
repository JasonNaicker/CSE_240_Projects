/*Project 2, 9/29/2025, Jason Naicker, CSE 240*/

%Facts
class(geometry).
class(calculus).
class(algebra).
class(english).
class(biology).
class(physics).
class(history).
class(spanish).
class(mandarin).
class(robotics).
class(pe).
class(economics).
class(psychology).
class(cs).
class(ethics).
class(health).

/*Student Enrollments in list format*/
enrolled(adam, [english, cs]).
enrolled(john, [health, psychology, pe]).
enrolled(samantha, [ethics, physics, calculus]).
enrolled(joshua, [geometry, algebra]).
enrolled(bridget, [history, spanish, mandarin]).
enrolled(zara, [history, robotics]).
enrolled(yousef, [health, spanish]).
enrolled(kara, [ethics, cs, mandarin]).
enrolled(manan, [english, geometry]).
enrolled(ashton, [algebra, pe]).
enrolled(klaus, [physics, history, health, algebra]).
enrolled(maya, [robotics, english]).
enrolled(clark, [spanish, cs]).
enrolled(jason, [calculus, cs]).
enrolled(dwayne, [geometry, history]).
enrolled(athena, [health, algebra]).
enrolled(anita, [mandarin, english]).
enrolled(sergi, [psychology, ethics]).
enrolled(pia, [robotics, economics]).
enrolled(andrew, [cs, health]).
enrolled(florry, [history, ethics]).
enrolled(suri, [pe, cs]).
enrolled(jovan, [economics, pe, ethics]).
enrolled(constantine, [economics, biology]).
enrolled(anne, [health, calculus]).

%Rules
/*--------------------------Helper Functions-------------------------------*/
/* Check if a class exists */
class_exists(Class) :- class(Class).

/*Check if two students are different */
diff_student(X,Y) :- X \= Y.

/*Check if member of both lists */
share_member(List1,List2) :- member(Element,List1),member(Element,List2).

/*Check if a student is enrolled by checking if the class exists, they are enrolled and if the class is a member of the list */
enrolled_in(Student, Class) :- class_exists(Class),enrolled(Student, Classes), member(Class, Classes).
/*---------------------------------------------------------------------------*/

%Queries
/*Check if two students share a specific class*/
share_class(X,Y, Class) :- diff_student(X,Y),enrolled_in(X,Class),enrolled_in(Y,Class).

/*Check if two students share any class*/
share_any_class(X,Y) :- diff_student(X,Y), enrolled(X,ClassesX), enrolled(Y,ClassesY), share_member(ClassesX,ClassesY).

