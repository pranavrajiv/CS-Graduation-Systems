$title Computer Sciece Graduation classes from University of Illinois at Chicago

$offsymxref offsymlist offuelxref offuellist offupper
option limrow = 0, limcol = 0;

set class /111,141,151,211,251,261,301,341,342,361,362,377,385,401,411,412,415,418,421,422,424,425,426,440,441,442,450,455,466,469,473,474,476,478,480,485,486,487/;
set time /'10AMmwf','11AMmwf','12PMrt','1PMmwf','2PMrt','3PMrt','4PMmwf','5PMmwf','2PMmwf','10AMrt','11AMrt','1PMrt'/; 
set sem /'Spr_2016','Fall_2016','Sum_2016','Spr_2017','Fall_2017','Sum_2017','Spr_2018','Fall_2018','Sum_2018','Spr_2019','Sum_2019','Fall_2019'/;

*Set class contains the  set of Computer Scince classes University of Illinois at Chicago has to offer.
*Set time contains at what times are available each day.
*Set sem contains which sesmseters are available for the student. 

parameter 
credits(class)/'111' 3,'141' 3,'151' 3,'211' 2,'251' 4,'261' 3,'301' 3,'341' 3,'342' 3,'361' 3,'362' 3,'377' 3,'385' 3,'401' 3,'411' 3,'412' 3,'415' 3,'418' 3,'421' 3,'422' 3,'424' 3,'425' 3,'426' 3,'440' 3,'441' 3,'442' 3,'450' 3,'455' 3,'466' 3,'469' 3,'473' 3,'474' 3,'476' 3,'478' 3,'480' 3,'485' 4,'486' 3,'487' 3/,
difficulty(class)/'111' 1,'141' 3,'151' 2,'211' 3,'251' 3,'261' 4,'301' 2,'341' 3,'342' 3,'361' 3,'362' 5,'377' 4,'385' 4,'401' 3,'411' 3,'412' 4,'415' 4,'418' 3,'421' 5,'422' 4,'424' 5,'425' 5,'426' 5,'440' 4,'441' 5,'442' 3,'450' 5,'455' 5,'466' 4,'469' 4,'473' 4,'474' 4,'476' 5,'478' 5,'480' 5,'485' 3,'486' 5,'487' 5/
;

*Credits parameter contains information about how many credits each class is.
*difficulty parameter contains information about how hard each class is out of 1-5 difficulty range.

scalar
difficulty_factor /1/;
*This scalar is used as a trade off factor which determines if a class is worth taking.

TABLE A(time,class)  
           111 141 151 211 251 261 301 341 342 361 362 377 385 401 411 412 415 418 421 422 424 425 426 440 441 442 450 455 466 469 473 474 476 478 480 485 486 487
'10AMmwf'  1   1    1   1   1   1   0   1   1   1   1   0   1   1   1   1   1   1   1   0   0   1   1   1   1   1   0   1   1   1   1   1   1   0   1   1   1   0  
'11AMmwf'  1   1    1   1   1   0   1   1   0   1   1   1   1   0   1   1   0   0   1   1   1   1   1   1   0   1   1   0   1   0   1   1   0   1   1   0   1   1
'12PMrt'   1   1    1   0   1   1   0   0   1   0   1   1   1   1   1   1   0   1   0   0   1   1   1   0   1   1   1   0   0   1   1   1   1   1   1   1   0   1
'1PMmwf'   1   1    1   1   1   0   1   1   1   1   1   0   0   1   1   1   1   1   1   0   0   1   1   1   1   1   0   1   1   1   1   0   0   0   1   1   1   0
'2PMrt'    1   1    1   1   1   1   1   1   0   1   1   1   1   1   1   1   0   0   1   1   1   1   1   1   0   1   1   0   1   0   1   0   1   1   1   0   1   1
'3PMrt'    1   1    1   0   1   0   0   0   1   0   1   1   1   1   1   1   0   1   0   0   1   1   1   1   1   1   1   0   0   1   1   0   0   1   1   1   0   1
'4PMmwf'   1   1    1   1   0   1   1   1   1   1   1   0   0   1   1   1   1   1   1   0   0   1   1   0   1   1   0   1   1   1   1   1   1   0   1   0   1   0
'5PMmwf'   1   1    1   1   1   0   1   1   0   1   1   1   1   1   1   1   1   0   1   1   1   1   1   1   0   1   1   0   1   0   1   1   0   1   1   1   1   1
'2PMmwf'   1   1    1   0   0   1   0   1   0   0   0   0   1   0   0   1   0   0   0   1   0   1   0   1   0   1   0   0   1   0   0   1   0   1   0   0   1   0
'10AMrt'   1   1    1   1   1   1   1   1   1   1   1   0   1   1   1   1   0   1   1   0   0   1   1   0   1   1   0   1   1   1   1   1   0   0   1   0   1   0
'11AMrt'   1   1    1   1   1   1   1   1   0   1   1   1   0   1   1   1   1   0   1   1   1   1   1   1   0   1   1   0   0   0   1   1   1   1   1   1   1   1
'1PMrt'    1   1    1   0   0   1   0   0   1   0   1   1   1   1   1   1   1   1   0   0   1   1   1   1   1   1   1   0   1   1   1   0   1   1   1   1   1   1
;
*Table A contains what times the CS classes are available each day.
*mwf stands for Monday, Wednesday and Friday.
*rt stands for Tuesday and Thursday.

TABLE B(sem,class)  
            111 141 151 211 251 261 301 341 342 361 362 377 385 401 411 412 415 418 421 422 424 425 426 440 441 442 450 455 466 469 473 474 476 478 480 485 486 487
'Spr_2016'  1   1    1   0   1   1   1   1   1   0   1   0   1   0   1   1   1   0   1   1   0   1   0   1   1   0   1   1   1   1   1   0   1   1   0   0   1   0 
'Fall_2016' 0   1    0   0   0   0   1   0   0   1   1   0   1   1   0   1   1   0   0   0   0   0   1   1   1   1   1   1   0   0   0   1   0   1   1   1   1   1
'Sum_2016'  0   0    1   0   1   0   0   0   1   0   0   1   0   0   1   1   1   1   0   0   1   0   1   0   0   1   0   0   1   0   0   1   1   0   1   0   1   0
'Spr_2017'  0   0    0   0   0   0   0   1   1   1   1   0   0   0   0   0   0   1   1   1   0   1   0   1   1   1   1   0   1   0   0   0   0   0   0   1   0   0
'Fall_2017' 0   0    1   1   0   1   1   0   0   0   0   1   1   1   1   1   1   0   0   1   0   1   0   1   1   1   0   1   0   0   1   1   0   0   1   0   1   1
'Sum_2017'  1   0    0   1   1   0   1   0   0   0   1   0   0   1   0   0   0   0   0   1   0   0   1   0   0   0   0   1   0   1   0   0   0   1   0   0   0   0
'Spr_2018'  0   1    1   1   1   0   1   0   1   1   0   1   0   0   0   1   1   1   1   0   1   0   0   0   1   1   1   1   1   0   1   1   1   0   1   0   1   0
'Fall_2018' 1   0    0   0   1   1   1   1   1   0   1   1   0   0   0   1   0   0   0   0   0   1   1   1   1   1   1   1   1   0   1   1   0   0   0   0   1   0
'Sum_2018'  0   0    1   0   1   0   1   0   0   1   0   0   1   1   0   0   0   0   0   1   0   0   0   1   1   0   0   0   0   1   0   1   1   0   1   0   1   0
'Spr_2019'  1   1    0   0   0   1   0   0   0   1   1   0   0   1   1   1   0   1   1   1   1   0   1   0   0   0   0   0   0   1   1   1   1   1   0   1   0   0
'Fall_2019' 0   0    0   1   1   0   1   1   0   1   0   1   0   1   1   1   1   0   1   1   1   1   0   1   1   1   1   1   0   0   0   1   1   0   1   0   1   1
'Sum_2019'  0   1    0   0   0   1   0   0   0   1   0   1   0   0   0   0   0   0   1   0   0   0   1   0   0   0   1   0   0   1   1   0   0   0   0   0   1   0
;
*Table B contains what sesmseter each CS classes are available for the student to take that class. 

alias(class,class1);
alias(sem,sem1);
set Arcs(class,class);
Arcs(class,class1)=no; 

Arcs('111','141') = yes;
Arcs('111','151') = yes;
Arcs('141','211') = yes;
Arcs('151','251') = yes;
Arcs('151','301') = yes;
Arcs('211','251') = yes;
Arcs('211','261') = yes;
Arcs('251','301') = yes;
Arcs('251','377') = yes;
Arcs('251','411') = yes;
Arcs('251','412') = yes;
Arcs('251','415') = yes;
Arcs('251','424') = yes;
Arcs('251','425') = yes;
Arcs('251','426') = yes;
Arcs('251','480') = yes;
Arcs('251','485') = yes;
Arcs('251','401') = yes;
Arcs('251','342') = yes;
Arcs('251','341') = yes;
Arcs('251','361') = yes;
Arcs('261','341') = yes;
Arcs('261','361') = yes;
Arcs('261','362') = yes;
Arcs('301','342') = yes;
Arcs('301','473') = yes;
Arcs('341','476') = yes;
Arcs('342','422') = yes;
Arcs('342','474') = yes;
Arcs('342','478') = yes;
Arcs('342','440') = yes;
Arcs('342','441') = yes;
Arcs('342','455') = yes;
Arcs('361','450') = yes;
Arcs('361','385') = yes;
Arcs('361','466') = yes;
Arcs('361','469') = yes;
Arcs('385','486') = yes;
Arcs('385','441') = yes;
Arcs('385','487') = yes;
Arcs('401','418') = yes;
Arcs('440','442') = yes;
Arcs('450','455') = yes;
Arcs('450','486') = yes;



*Set arcs contains the prerequisites of each class.

option Arcs:0:0:1 ;
display Arcs;



binary variables x(class,time,sem),semesterTaken(sem) ;
*x is the decision variable
*semseterTaken keeps track of what all sesmesters atleast a sigle course is taken.

free variable cost,obj;

equations
flow_balance0(class,class1,sem),
flow_balance1(time,sem),
flow_balance2(class),
flow_balance3(class,time,sem),
creditequa0,
cost_eq
creditequa1(sem)
crseTke(sem)
;




cost_eq..                                
cost =E= 15000*sum(sem,semesterTaken(sem));
*cost equation calculates the overall cost of the student to graduate with the CS degree.
                                                                                     

crseTke(sem)..
sum((class,time),x(class,time,sem)) =L= 6 * semesterTaken(sem);   
*This equation is what desides if a semseter is taken or not.
*Here value of Big M is 6.


flow_balance0(class,class1,sem)$(Arcs(class,class1))..
sum(time,x(class1,time,sem))=l= sum(time,sum(sem1$(Ord(sem1)<Ord(sem)),x(class,time,sem1)));
*flow_balance0 equations is what decides if the course prerequisites are met at the pevious semester.



flow_balance1(time,sem)..
sum(class,x(class,time,sem))=l=1;
*flow_balance1 equation makes sure that at a particular semseter and a particular time only one course is taken.


flow_balance2(class)..
sum((time,sem),x(class,time,sem))=l=1;
*flow_balance2 equation makes sure that a course is taken only once overall, at different semseters and time.


flow_balance3(class,time,sem)..
x(class,time,sem)=l=A(time,class)*B(sem,class);
*flow_balance3 equation makes sure that x will be 1 only of table A and B are 1.



creditequa0..
sum((class,time,sem),x(class,time,sem)*credits(class)) =g= 60;
*creditequa0 equation makes sure that student needs minimum 60 credits to graduate.


creditequa1(sem)..
sum((class,time),x(class,time,sem)*credits(class)) =l= 18;
*creditequa1 equation makes sure that student doesnt take more that 18 credits in one semester.


model project1 /cost_eq,flow_balance0,flow_balance1,flow_balance2,flow_balance3,creditequa0,creditequa1,crseTke/;
*solving without giving the tradeoff constrain.
solve project1 using mip minimizing cost ;
display x.L;


equations
obj_eq ;

obj_eq..
obj=e= cost + sum((class,time,sem),difficulty(class)*difficulty_factor*x(class,time,sem));
*obj_eq equation is the trade off equation which helps to avoid taking a class is it is difficult.


model project2 /all/;
*solving with the tradeoff constrain.
solve project2 using mip minimizing obj ;

display cost.L ;
display x.L;

