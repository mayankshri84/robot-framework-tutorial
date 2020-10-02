

*** Test Cases ***


Forloop2:
    FOR     ${j}    IN  1   2   3   4   5   6   7   8
    \   log to console    ${j}
    \   exit for loop if    ${j}==4

#Forloop3
 #   @{items}     create list    1    2   3   4
  #      : FOR     ${k}    IN      @{items}
   #     \   log to console      ${k}

#Forloop1
 #   : FOR   ${i}    IN RANGE    1  10
 #   \   log to console    ${i}
