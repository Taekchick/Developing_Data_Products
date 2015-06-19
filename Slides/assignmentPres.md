Developing Data Products Assignment  
========================================================
author: Rachel
date: June 17th 2015
transition: linear

Introduction
========================================================
transition: zoom
incremental: true
Have you ever tried to plan for your retirement? 

Do you know if you are ready to retire now? 

Most likely we would laugh and say no. But how do you know for sure without doing the calculations?

If you look at online retirement planning forms or when you visit your financial advisor, they will give you several pages of questions and forms for you to answer. And many of these questions can be tedious or difficult to answer.

What if, you just want a simple way to find out whether or not you can retire right now. What is the very minimum number of information you would need to know this answer? 

 
=========================================================
type: section
incremental: true
left: 24%
![alt text](images/retire.jpg)
***
Here are the 4 questions you need to know :
- How much will you need to spend in retirement? ($ per year)
- How much do you have saved? (total $)
- Inflation rate in % (fixed, annual)*
- Interest rate in % (fixed, annual)*

*Simplified for a very basic calculation


Calculation behind it
========================================================
X = Spending/(Growth rate - Inflation rate)

Y = Savings

If X >= Y, then you have enough to live without needing further income. Given that the inflation and the growth rate stays the same

Otherwise, X < Y, you do not have enough saved.


Caution... Warning 
========================================================
type: prompt
Please note that this is in no way a full retirement calculation. Many of these factors fluctuate making it difficult to calculate the constant rates.

This Shiny app is created to give people an idea on the possibilities of financial independence  

See http://www.mrmoneymustache.com/ for more information.

<small> Most relevant read for this Shiny app is [this article](http://www.mrmoneymustache.com/2012/05/29/how-much-do-i-need-for-retirement/)</small>
