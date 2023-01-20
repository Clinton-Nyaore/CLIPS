         CLIPS (V6.241 06/19/07)
CLIPS> (defrule read-gender
=>
(printout t crlf crlf "Welcome! Diet and Nutrition Expert System" crlf)
(printout t "  ******************************************** " crlf)
(printout t " This output of this program is " crlf)
(printout t"  1.Your BMI and body-status " crlf)
(printout t " 2. Recommended daily calories needed" crlf)
(printout t " 3. Daily proteins needed" crlf)
(printout t " 4. Daily Calcium needed based on your age" crlf)
(printout t " 5. Daily Fiber needed based in your calories" crlf)
(printout t " 6. Daily Carbohydrates needed based on your weight" crlf)
(printout t " ********************************************* " crlf crlf)
(printout t " What is your gender (Female / Male) *case-sensitive* : ")
(assert(gender(read))))
CLIPS> (defrule read-age
(gender ?)
=>
(printout t"Please enter your age : ")
(assert( age (read))))
CLIPS> (defrule read-height
(age ?)
=>
(printout t "Please enter your height (in cms) : ")
(assert ( height (read))))
CLIPS> (defrule read-weight
(height ?)
=>
(printout t "Please enter your weight (in kgs) : ")
(assert( weight (read))))
CLIPS> 
(defrule read-activity-days
(weight ?)
=>
(printout t "How many days do you exercise for a week :")
(assert( activity-days (read))))
CLIPS> 
(defrule activity-sedentary
(activity-days ?)
=>
(if (< ?d 2) then (assert( activity-factor 1.2)(activity-rate-sedentary))))

[PRCCODE3] Undefined variable d referenced in RHS of defrule.

ERROR:
(defrule MAIN::activity-sedentary
   (activity-days ?)
   =>
   (if (< ?d 2)
      then
      (assert (activity-factor 1.2)
              (activity-rate-sedentary))))
CLIPS> 
(defrule activity-sedentary
(activity-days ?)
=>
(if (< ?days 2) then (assert( activity-factor 1.2)(activity-rate-sedentary))))

[PRCCODE3] Undefined variable days referenced in RHS of defrule.

ERROR:
(defrule MAIN::activity-sedentary
   (activity-days ?)
   =>
   (if (< ?days 2)
      then
      (assert (activity-factor 1.2)
              (activity-rate-sedentary))))
CLIPS> 
(defrule activity-sedentary
(activity-days ?)
=>
(if (< ?activity-days 2) then (assert( activity-factor 1.2)(activity-rate-sedentary))))

[PRCCODE3] Undefined variable activity-days referenced in RHS of defrule.

ERROR:
(defrule MAIN::activity-sedentary
   (activity-days ?)
   =>
   (if (< ?activity-days 2)
      then
      (assert (activity-factor 1.2)
              (activity-rate-sedentary))))
CLIPS> 
(defrule activity-sedentary
(activity-days ?d)
=>
(if (< ?d 2) then (assert( activity-factor 1.2)(activity-rate-sedentary))))
CLIPS> 
(defrule activity-moderate
(activity-days ?d)
=>
(if (>= ?d 2) then (assert( activity-factor 1.55) (activity-rate-moderate))))
CLIPS> 
(defrule get-protein
(activity-rate-moderate)
(weight ?w)
=>
(assert( protein-needed(* 0.9 ?w))))
CLIPS> 
(defrule protein-advice
(protein-needed ?p)
=>
(printout t crlf crlf" ########### Result #############" crlf)
(printout t "    1. You need " ?p "g of protein per day. " crlf))
CLIPS> (run)
0 rules fired        Run time is 0.0100000000002183 seconds.
0.0 rules per second.
0 mean number of facts (0 maximum).
0 mean number of instances (0 maximum).
0 mean number of activations (0 maximum).
CLIPS> (unwatch statistics)
CLIPS> (run)
CLIPS> (agenda)
CLIPS> (facts)
CLIPS> (defrule read-gender
=>
(printout t crlf crlf "Welcome! Diet and Nutrition Expert System" crlf)
(printout t "  ******************************************** " crlf)
(printout t " This output of this program is " crlf)
(printout t"  1.Your BMI and body-status " crlf)
(printout t " 2. Recommended daily calories needed" crlf)
(printout t " 3. Daily proteins needed" crlf)
(printout t " 4. Daily Calcium needed based on your age" crlf)
(printout t " 5. Daily Fiber needed based in your calories" crlf)
(printout t " 6. Daily Carbohydrates needed based on your weight" crlf)
(printout t " ********************************************* " crlf crlf)
(printout t " What is your gender (Female / Male) *case-sensitive* : ")
(assert(gender(read))))
CLIPS> (run)
CLIPS> (agenda)
CLIPS> (refresh read-gender)
CLIPS> (deftemplate nutrition( multislot age))
CLIPS> (deffunction starter()
(printout t crlf crlf "Welcome! Diet and Nutrition Expert System" crlf)
(printout t "  ******************************************** " crlf)
(printout t " This output of this program is " crlf)
(printout t"  1.Your BMI and body-status " crlf)
(printout t " 2. Recommended daily calories needed" crlf)
(printout t " 3. Daily proteins needed" crlf)
(printout t " 4. Daily Calcium needed based on your age" crlf)
(printout t " 5. Daily Fiber needed based in your calories" crlf)
(printout t " 6. Daily Carbohydrates needed based on your weight" crlf)
(printout t " ********************************************* " crlf crlf)
(printout t " What is your gender (Female / Male) *case-sensitive* : ")
(assert(gender(read))))
CLIPS> (starter)


Welcome! Diet and Nutrition Expert System
  ******************************************** 
 This output of this program is 
  1.Your BMI and body-status 
 2. Recommended daily calories needed
 3. Daily proteins needed
 4. Daily Calcium needed based on your age
 5. Daily Fiber needed based in your calories
 6. Daily Carbohydrates needed based on your weight
 ********************************************* 

 What is your gender (Female / Male) *case-sensitive* : Male
<Fact-0>
CLIPS> (facts)
f-0     (gender Male)
For a total of 1 fact.
CLIPS> (run)
Please enter your age : 12
Please enter your height (in cms) : 23
Please enter your weight (in kgs) : 44
How many days do you exercise for a week :11


 ########### Result #############
    1. You need 39.6g of protein per day. 
CLIPS> 
