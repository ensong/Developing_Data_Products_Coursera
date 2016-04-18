---
title       : Negoiate your Salary!
subtitle    : Data Products Project
author      : Ed Song
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Why you should negoiate your salary

1. Employers want to pay you as little as possible
2. You want to get paid as much as possible
3. Volunteering is free. For work you must get...PAID!!!

--- .class #id 

## Major factors to consider when Negotiating

1. Current Salary
2. How much of an increase would you like
3. How much time will you spend getting to work
4. Will there be work from home


---

## Calculate your new base salary

Basic Example:


```r
Current_salary = 50000
raise = .15 #15%

New_salary <- Current_salary * (1 + raise)

New_salary
```

```
## [1] 57500
```

---


Calculate your function salary

Accounting for commute:


```r
Current_salary = 50000
raise = .15 #15%
New_salary <- Current_salary * (1 + raise)

old_commute = 20 #minutes
new_commute = 80 #minutes
old_commute_days_a_week = 5
new_commute_days_a_week = 4

old_rate <- Current_salary /(2080+(old_commute/60*old_commute_days_a_week*52))
new_rate <- New_salary / (2080+(new_commute/60*new_commute_days_a_week*52))

Functional_new_salary <- Current_salary+(Current_salary)*((new_rate-old_rate)/old_rate)

Functional_new_salary
```

```
## [1] 52849.26
```



---

What did we learn:

1. Negotiate based on functional salary the base salary.
2. Your mental anguish in transit needs to be considered.
3. Make sure to take it easy its only work.

All calculations assume work life balance and that there is really is a 40 hour work week.



