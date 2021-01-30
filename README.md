### Silver Tsunami at Pewett Hackard: An Analysis 

## Results 

- The goal of Deliverable 1 was to determine the number of retiring employees by title. A table of Retirement Titles was created using SQL queries that holds all the titles of current employees who were born between Jan 1, 1952 and December 31, 1955. The initial CSV table contained some employees listed with more than one job title, due to promotions and cross-departmental career changes. The Retirement Titles table was then cleared of old titles, and a new table was created, called Unique Titles. This provided a clean tally of the number of expected retiring employees. There are 90,398 possible retirees at Pewlett Hackard in the near future. 

- The number of retiring titles was retrieved from this table to determine the number of employees by their most recent job title who are about to retire. This table, the Retiring Titles table, provides a tidy rundown of which titles have the highest number of likely retirees. The highest number of potential retirees are Senior Engineers, with a total of 29,414. A fairly close second title of retirees are Senior Staff, at 28,254. The title with the fewest retirements looming are Managers, as there are only two of retirement age. The Retiring Titles chart can be viewed here: [Retiring Titles.png]. 

- The goal of Deliverable 2 was to create a mentorship-eligibility table that holds the current employees who were born between Jan 1, 1965 and December 31, 1965. These are employees not yet at retirement age, but who may retire following the initial Silver Tsunami, and can serve as mentors to up and coming workers. We determined through several queries and joining of tables that there are 1,549 PH employees that meet the age requirements for possible mentorship roles. A snapshot of the first ten rows of this table can be viewed here: [Mentorship Eligibilty table.png]. 

 ## Summary 

 -	How many roles will need to be filled as the “silver tsunami” begins to make an impact? 
    - According to our analysis, a large number of employees will be headed for retirement in the near future – 90,398. This will be quite a gap to fill in the Pewlett Hackard workforce, and additional queries into this group may be warranted; how many have indicated they are planning to retire in the next year, three years, or five years? Are there members of the retirement bloc with no plans to formally retire in the next 10 years? 

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
    - There are 1,549 PH employees that meet the age requirements for possible mentorship roles. This is a small percentage of the total number of employees expected to retire in the coming months and years, and alternative approaches will need to be considered and put into action. A possible query to run could include an assessemnt of the number of employees that were born in 1960, 1970, 1975, and 1980 as there could opportunity for multi-generational mentorships to prepare the incoming workforce. 
