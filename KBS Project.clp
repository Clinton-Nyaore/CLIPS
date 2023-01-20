         CLIPS (V6.241 06/19/07)
CLIPS> 
(defrule get-name
(initial-fact)
=>
(printout t" Enter your name : "crlf)
(assert (name (read))))
CLIPS> 
(defrule welcome
(name ?n)
=>
(printout t " WELCOME "?n" TO NAKURU CITY TRAVELLING RECOMMENDER" crlf crlf)
(printout t " These are the stages available: "crlf" 1. TOTAL "crlf" 2. SUBUKIA"crlf" 3. MOLO"crlf" 4.NJORO"crlf)
(printout t " Please enter your destination (Choose from above) : "crlf)
(assert (destination (read))))
 CLIPS> 
(defrule recommend
(destination ?d)
=>
(if (eq ?d TOTAL) then (printout t" The Public Service Vehicle(s) to use are :"crlf" 1. NORTH RIFT" crlf" 2. 2NK SACCO"crlf)))
CLIPS> 
(defrule recommend2
(destination ?d)
=>
(if (eq ?d SUBUKIA) then (printout t" The Public Service Vehicle(s) to use are :"crlf" 1. NYAMAKIMA" crlf" 2. 4NTE SACCO"crlf)))
CLIPS> 
(defrule recommend3
(destination ?d)
=>
(if (eq ?d MOLO) then (printout t" The Public Service Vehicle(s) to use are :"crlf" 1. MOLOLINE" crlf" 2. TRANSLINE"crlf)))
CLIPS> 
(defrule recommend4
(destination ?d)
=>
(if (eq ?d NJORO) then (printout t" The Public Service Vehicle(s) to use are :"crlf" 1. DREAMLINE" crlf" 2. MODERN BUS"crlf)))
CLIPS> 
(reset)
CLIPS> (run)
 Enter your name : 
DER
 WELCOME DER TO NAKURU CITY TRAVELLING RECOMMENDER

 These are the stages available: 
 1. TOTAL 
 2. SUBUKIA
 3. MOLO
 4.NJORO
 Please enter your destination (Choose from above) : 
MOLO
 The Public Service Vehicle(s) to use are :
 1. MOLOLINE
 2. TRANSLINE
CLIPS> 
(reset)
CLIPS> (run)
 Enter your name : 
DER
 WELCOME DER TO NAKURU CITY TRAVELLING RECOMMENDER

 These are the stages available: 
 1. TOTAL 
 2. SUBUKIA
 3. MOLO
 4.NJORO
 Please enter your destination (Choose from above) : 
TOTAL
 The Public Service Vehicle(s) to use are :
 1. NORTH RIFT
 2. 2NK SACCO
CLIPS> 

