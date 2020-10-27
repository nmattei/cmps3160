---
layout: page
title: Project 2
subtitle: Moneyball!
published: true
---

# Project 2: Moneyball!

**Posted:** Oct 12, 2020; <br>

In this project you will apply your data wrangling and exploratory data analysis skills to baseball data. In particular, we want to know how well did Moneyball work for the Oakland A's. Was it worthy of a movie?

## A Bit of Background

We'll be looking at data about teams in Major League Baseball. A couple of important points:

Major League Baseball is a professional baseball league, where teams pay players to play baseball. The goal of each team is to win as many games out of a 162 game season as possible. Teams win games by scoring more runs than their adversary. In principle, better players are costlier, so teams that want good players need to spend more money. Teams that spend the most, frequently win the most. So, the question is, how can a team that can't spend so much win? The basic idea that Oakland (and other teams) used is to redefine what makes a player good, i.e., figure out what player characteristics translated into wins. Once they realized that teams were not really pricing players using these characteristics, they could exploit this market inefficiency to pay for undervalued players, players that were good according to their metrics, but were not recognized as such by other teams, and therefore not as expensive.

You can get more information about this period in baseball history from:

[Wikipedia](http://en.wikipedia.org/wiki/Moneyball)

[The Moneyball Book](http://www.amazon.com/Moneyball-The-Winning-Unfair-Game/dp/0393324818)

[The Moneyball Movie](http://www.imdb.com/title/tt1210166/)

A fun side note, [Michael Lewis](https://en.wikipedia.org/wiki/Michael_Lewis) is a New Orleans native who went to Newman.  He has a number of other interesting books including [The Big Short](https://en.wikipedia.org/wiki/The_Big_Short) and a great pod-cast called [Against the Rules](https://atrpodcast.com/).

## The Data

You will be using data from a very useful database on baseball teams, players and seasons curated by Sean Lahman available at [http://www.seanlahman.com/baseball-archive/statistics/](http://www.seanlahman.com/baseball-archive/statistics/). The database has been made available as a `sqlite` database [https://github.com/jknecht/baseball-archive-sqlite](https://github.com/jknecht/baseball-archive-sqlite). `sqlite` is a light-weight, file-based database management system that is well suited for small projects and prototypes.

**Note:** You must use the 2014 data for this project.  Failure to use the correct file will cause a **loss of points!!** And the analysis won't work quite right!!

You can read more about the dataset here: [http://seanlahman.com/files/database/readme2014.txt](http://seanlahman.com/files/database/readme2014.txt).

You can download the `sqlite` file directly from github at [https://github.com/jknecht/baseball-archive-sqlite/blob/master/lahman2014.sqlite](https://github.com/jknecht/baseball-archive-sqlite/blob/master/lahman2014.sqlite).

You will be accessing the `sqlite` database in python using the [sqlite package](https://docs.python.org/3/library/sqlite3.html). This package provides a straightforward interface to extract data from `sqlite` databases using standard SQL commands.

Once you establish a connection with the `sqlite` database, you can store query results directly in a pandas dataframe using the [read_sql](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.read_sql.html) function as discussed in class.

For example, here's how you would tabulate total league payrolls for each year:


```
import sqlite3
import pandas

sqlite_file = 'lahman2014.sqlite'
conn = sqlite3.connect(sqlite_file)

salary_query = "SELECT yearID, sum(salary) as total_payroll FROM Salaries WHERE lgID == 'AL' GROUP BY yearID"

team_salaries = pandas.read_sql(salary_query, conn)
team_salaries.head()
```

The result would look something like:

| | yearID | total_payroll |
| --- | --- | --- |
| 0 | 1985 | 134401120.0 |
| 1 | 1986 | 157716444.0 |
| 2 | 1987 | 136088747.0 |
| 3 | 1988 | 157049812.0 |
| 4 | 1989 | 188771688.0 |


## The Question

We want to understand how efficient teams have been historically at spending money and getting wins in return. In the case of Moneyball, one would expect that Oakland was not much more efficient than other teams in their spending before 2000, were much more efficient (they made a movie about it after all) between 2000 and 2005, and by then other teams may have caught up. Your job in this project is to see how this is reflected in the data we have.

## Part 1: Wrangling

The data you need to answer these questions is in the Salaries and Teams tables of the database.

#### Problem 1

**Using SQL queries only** compute a relation containing the total payroll and winning percentage (number of wins / number of games * 100) for each team (that is, for each teamID and yearID combination). You should include other columns that will help when performing EDA later on (e.g., franchise ids, number of wins, number of games).

**Hint:** Take a good look at the [SQLite Documentation](https://www.sqlitetutorial.net/).

Include as a cell the SQL code you used to create this relation. As a markdown cell, describe how you dealt with any missing data in these two relations. Specifically, indicate if there is missing data in either table, and how the type of join you used determines how you dealt with this missing data. 

**If you read the whole database into a file you will lose points, the SQL query you write should do all processing on the server side as discussed in class.**

**You must display the head of the resulting data table / dataframe in your notebook.  You should also display the results of one team over the time range to make sure your data is correct.  Note that this data table is the data frame you will use for the rest of the project.**

**Hint:** For SQL you have to be mindful of integer vs. float division.  See the above tutorial on how to deal with this.

## Part 2: Exploratory Data Analysis

Using the dataframe you made in Part 1, work on Part 2 and Part 3.

### Payroll Distribution

#### Problem 2

Write code to produce *a single plot* that illustrates the distribution of payrolls across teams conditioned on time (from 1990-2014).  This plot should be clear and interpretable.  You will be graded on the clairty of the plot you decide to make.

Write code to produce *a single scatter plot* that shows winning percentage as a function of total payroll.  That is, the total payroll on the x-axis and win percentage is on the y axis.

#### Question 1

What statements can you make about the distribution of payrolls conditioned on time based on these plots? Remember you can make statements in terms of central tendency, spread, and other statistics discussed in class.

#### Problem 3

Write code to produce plot(s) that specifically show at least one of the statements you made in Question 1. For example, if you make a statement that there is a trend for payrolls to decrease over time, make a plot of a statistic for central tendency (e.g., mean payroll) vs. time to show that specifically.  Aka, back up your statement with data and an effective visualization!

### Correlation Between Payroll and Winning Percentage

#### Problem 4

Write code to discretize year into five time periods (you can use [pandas.cut](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.cut.html) to accomplish this) and then make a set of scatter plot showing mean winning percentage (y-axis) vs. mean payroll (x-axis) for each of the five time periods.  Your time periods should be roughly 1990-1995, 1995-2000, 2000-2005, 2005-2010, 2010-2014.

Add a regression line (using, e.g., [SciPy linregress](https://docs.scipy.org/doc/scipy-0.14.0/reference/generated/scipy.stats.linregress.html)) in each of the 5 scatter plot to ease interpretation.

Label each point with the team or franchise [using something like this](https://stackoverflow.com/questions/15910019/annotate-data-points-while-plotting-from-pandas-dataframe/15911372#15911372).  You may need to read over the documentation for the [annotate function](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.axes.Axes.annotate.html).

**Hint:** To do this you may need to extract the axis object from the plotting call and add things to it as we did in Lab 5.

#### Question 2

What can you say about team payrolls across these periods? Are there any teams that standout as being particularly good at paying for wins across these time periods? What can you say about the Oakland A's spending efficiency across these time periods and specifically in the Moneyball period of 2000-2005.

## Part 3: Data Transformations

### Standardizing Across Years

It looks like comparing payrolls across years is problematic so let's do a transformation that will help with these comparisons.

#### Problem 5

Create a new variable in your dataset that standardizes payroll conditioned on year.  For this we will compute the [Z-score of the variables](https://en.wikipedia.org/wiki/Standard_score). So, this column for team `i` in year `j` should equal:

$$ standardized\_payroll_{ij} = \frac{payroll_{ij} - avg\_payroll_{j}}{s_j} $$


for team `i` in year `j`.

where <em>avg\_payroll<sub>j</sub></em> is the average payroll, over all teams, for year `j`, and <em>s<sub>j</sub></em> is the standard deviation of payroll for year `j`.

You must display the head of this DataFrame in your notebook to receive credit.

**Hint: Recall our lab on filtering and transforming data!  You may also want to check out the [Transform function](https://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html#transformation)**

#### Problem 6

Repeat the same plots as Problem 4, but use this new standardized payroll variable.  Remember that you should have one plot for each of the 5 time periods.

#### Question 3

Discuss how the plots from Problem 4 and Problem 6 reflect the transformation you did on the payroll variable.  Specifically, what is easier to see, what is harder to see?  Are any relationships more apparent?

### Expected Wins

It's hard to see global trends across time periods using these multiple plots, but now that we have standardized payrolls across time, we can look at a single plot showing correlation between winning percentage and payroll across time.

#### Problem 7

Make a **single scatter plot** of winning percentage (y-axis) vs. standardized payroll (x-axis). Add a regression line to highlight the relationship.  You do not need to label the teams in this plot.

The regression line gives you expected winning percentage as a function of standardized payroll. Looking at the regression line, it looks like teams that spend roughly the average payroll in a given year will win 50% of their games (i.e. win\_pct is 50 when standardized\_payroll is 0), and teams increase 5% wins for every 2 standard units of payroll (i.e., win\_pct is 55 when standardized\_payroll is 2). We will see how this is done in general using linear regression later in the course.

From these observations we can calculate the expected win percentage for team `i` in year `j` as

$$ expected\_win\_pct_{ij} = 50 + 2.5 \times standardized\_payroll_{ij} $$

### Spending Efficiency

Using this result, we can now create a single plot that makes it easier to compare teams efficiency. The idea is to create a new measurement unit for each team based on their winning percentage and their expected winning percentage that we can plot across time summarizing how efficient each team is in their spending.

#### Problem 8

Create a new field to compute each team's spending efficiency, given by:

$$ efficiency_{ij} = win\_pct_{ij} - expected\_win\_pct_{ij} $$

for team `i` in year `j`, where `expected_win_pct` is given above.

Make a line plot with year on the x-axis and efficiency on the y-axis. A good set of teams to plot are Oakland, the New York Yankees, Boston, Atlanta and Tampa Bay (teamIDs OAK, BOS, NYA, ATL, TBA).

#### Question 4

What can you learn from this plot compared to the set of plots you looked at in Question 2 and 3? How good was Oakland's efficiency during the Moneyball period?

## Submission

Prepare a Jupyter notebook that includes for each Problem: (a) code to carry out the step discussed, (b) output showing the result of your code, and (c) a short prose description of how your code works. Remember, the writeup you are preparing is intended to communicate your data analysis effectively. Thoughtlessly showing large amounts of output in your writeup defeats that purpose.

All axes in plots should be labeled in an informative manner. Your answers to any question that refers to a plot should include both (a) a text description of your plot, and (b) a sentence or two of interpretation as it relates to the question asked.

Submit this completed notebook which contains your answers as markdown cells to [Canvas](https://tulane.instructure.com/)

## Grading Rubric

Note that code that does not work will not be graded and you will receive a 0 for that section.  We reserve the right to deduct points for things like general sloppiness of the notebook, poor labels, unlabeled axes, etc.  You should include markdown cells to break up your notebook and **clearly label** the problems and questions below.

* (10 Points) *Professionalism*: You have used both code comments and markdown cells to professionally and clearly document your work including having a clear and clean notebook; linking to resources and documents; and doing so with code that is reasonable and efficient. 
* (15 Points) Part 1: *Wrangling*
  * (10 Points) Problem 1: You used a single SQL query and display the correct dataset.
  * (5 Points) Discussion of how missing data is dealt with is present.
 * (35 Points) Part 2: *Exploratory Data Analysis* 
   * (10 Points) Problem 2: You have produced the plot to show the distribution of payrolls across time.
   * (5 Points) Question 1: There is a markdown cell explaining the statements about this plot and the statements are reasonable.
   * (5 Points) Problem 3: A plot exists and is well labeled to support the statements.
   * (10 Points) Problem 4: Code is present to discretize the data into 5 time periods.  Plot is present of winning percentage as a function of mean payroll.
   * (5 Points) Question 2: Markdown cell explains results for Question 2 about trends over time.
* (40 Points) Part 3: *Data Transformations*
  * (10 Points) Problem 5: Code is present to achieve standardized payroll and is reasonable and correct.
  * (5 Points) Problem 6: Plots are present that compare the old and new payroll variables.
  * (5 Points) Question 3: Markdown cell addresses differences between Problem 4 and Problem 6.
  * (10 Points) Problem 7: Plot and regression line are present and code is correct and reasonable.
  * (5 Points) Problem 8: Code and plot are present and correct to measure the spending efficiency.
  * (5 Points) Question 4: Markdown cell is present that discusses the findings, it is reasonable and correct.

| Full    |    Good |  Okay |   Lacking   |   Poor  | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
| You completely and fully met the criteria described. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed components of the required criteria and/or they are incorrect / inappropriate or lack depth. | You have missed major components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

### Credits

Thanks to [John P. Dickerson](http://jpdickerson.com/) for the Project writeup.

