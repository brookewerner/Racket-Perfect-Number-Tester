# Racket-Perfect-Number-Tester
Racket code tests for perfect, abundant, and deficient numbers

Project for CSC 173 Computation & Formal Systems with Professor George Ferguson.

-----

(a) HOW TO RUN PROJECT:

Load into DrRacket and run it with the “Pretty Big” language. Follow prompt to enter a number for part 1.

-----

(b) DESCRIPTION OF APPROACH:

For part 1, we used recursion to check every number starting at 6 for a perfect number. Since we already knew 6 was the first perfect number, we did not feel it necessary to increase runtime/memory used by starting out earlier than that with testing. Every time that a perfect number is found, we run the recursePerfect function with an incremented “startNumb” which is the number of perfect numbers found so far. The startNum is compared to the number that the user requested, and once they are matching, the function recursion will end.

For part 2, we created a list of numbers from 2 to 1000 and tested each for perfection. If not, we tested for abundance and then for deficient.

-----

(c) COLLABORATORS:

Brooke Werner

Alana Zakroczemski

Sooyoung Kim
