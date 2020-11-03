---
layout: page
title: Final Tutorial
subtitle:
published: true
---

# Final Tutorial

Instead of a Final Exam in this course you will be responsible for generating a tutorial that will walk users through the entire data science pipeline: data curation, parsing, and management; exploratory data analysis; hypothesis testing and machine learning to provide analysis; and then the curation of a message or messages covering insights learned during the tutorial. Students may choose an application area and dataset(s) that are of interest to them; please feel free to be creative about this!

In the interest of building students' public portfolios, and in the spirit of "learning by doing", students will create a self-contained online tutorial to be posted publicly and a 7-10 minute presentation in class. This tutorial can be created individually or in a small group (max 2 people). This assignment will be a publicly-accessible website that provides an end-to-end walk-through of identifying and scraping a specific data source, performing some exploratory analysis, and providing some sort of managerial or operational insight from that data.  We will have several milestones associated with the final project including the following.  These are each discussed below in more detail.

1. **Milestone 1:** Identifying a dataset and establishing a GitHub.io Site, Extraction, Transform, and Load (ETL). (50 points)
2. **Milestone 2:** Additional Extraction, Transform, and Load (ETL) + Exploratory Data Analysis (EDA). (50 points)
3. **Deliverable 1:** In Class Presentation. (50 points)
4. **Deliverable 2:** Final Website. (100 points)

Examples of high quality notebooks from past Data Science classes:
* Eli and Matt, [The Happiness Project](https://mcatalano26.github.io/Data-Science-Final-Project/)
* Addie, [Deaths in Louisiana: An Analysis of Available Data](https://ajasica.github.io/)
* John (Dung), [Airbnb in New York City](https://dungngotan99.github.io/)

----

## Milestone 1: Groups, Data, Website, and Extraction, Transform, and Load (ETL) - 9/24/2020.

For Milestone 1 you should generate a roughly 1 page writeup (500 words) listing a partner and one to three datasets that you are considering working with and why.  This is just an outline to make sure you are thinking.  This will be published on your GitHub IO page so this also makes sure you’ve figured out how to get it uploaded!

You must also include a short *collaboration plan* describing how you are working together, what technologies you are using, and when / how often you are meeting to work on this project.  Examples include: we setup a private Github repo to coordinate code and we met on Zoom X times…. or even we used [Teletype for Atom](https://teletype.atom.io/) or [RemoteCollab for Sublime](https://packagecontrol.io/packages/RemoteCollab). Failure to turn in a collaboration plan that shows you coordinated will be a loss of professionalism points. The turned in result will need to reflect the understanding of both students

You should load one of these datasets and parse it into shape using the principles of tidy data discussed in class. This is to show that you have figured out how to get the data into your system.  You should clearly discuss the data and what challenges you had in formatting it.

### Possible Sources of Data

This list is just to give you some ideas.  Please feel free to scrape websites (legally!) or to find other sources of data that you may find important or interesting.

* [Data.Gov](https://www.data.gov/): US-centric agriculture, climate, education, energy, finance, health, manufacturing data, and more.
* [BigQuery (Google Cloud)](https://cloud.google.com/bigquery/public-data/) public datasets (bikeshare, GitHub, Hacker News, NOAA,...) and many more.
* [Kaggle Competition Datasets](https://www.kaggle.com/datasets) Billboard Top 100 lyrics, credit card fraud, crime in Chicago, global terrorism, world happiness, etc...
* [Amazon AWS Public Data](https://aws.amazon.com/public-datasets/) AWS-hosted, various (NASA, a bunch of genome stuff, Google Books n-grams, Multimedia Commons, etc.)
* [Data is Plural](https://docs.google.com/spreadsheets/d/1wZhPLMCHKJvwOkP4juclhjFgqIY8fQFMemwKL2c64vk/edit#gid=0) Lots of interesting and strange datasets in a Google spreadsheet -- [also see archive here](https://tinyletter.com/data-is-plural/archive).
* [Corgies Datasets](https://think.cs.vt.edu/corgis/) Curated set of data from Virginia Tech.
* [GitHub Awesome Public Datasets](https://github.com/awesomedata/awesome-public-datasets) list of datasets that are open and public around the Internet.
* [Think Stats Datasets](https://docs.google.com/spreadsheets/d/e/2PACX-1vQlv2BpO7TsU2UAE7iQwCUxvxn9LTXEPPj5EnA0l9-DJSwCDZU0xg_IhWBItZ7bNvZ_BnznuOrYYy0i/pubhtml) list of interesting datasets from a class very much like this one.
* [Data.Nola.Gov](https://data.nola.gov/browse) list of open datasets from NOLA including lots of financial, voting, etc.
* [IPUMS](https://ipums.org/) provides census and survey data from around the world integrated across time and space. IPUMS integration and documentation makes it easy to study change, conduct comparative research, merge information across data types, and analyze individuals within family and community contexts. 
* [Pew Research Center Data](https://www.pewresearch.org/download-datasets/) Data from the Pew Research Center, mostly public opinion polls of thousands of different things!
* [US Census](https://data.census.gov/cedsci/) Easy to use data from all the Censuses including many things like names, income, and more! -- More specifically https://www.census.gov/programs-surveys/acs
* [IRS](https://www.irs.gov/statistics) The IRS publishes all kinds of data including incomes and historical time series.
* [The Data Center New Orleans](https://www.datacenterresearch.org/data-resources/) New Orleans specific data of all kinds!
* [Five Thirty Eight Data](https://github.com/fivethirtyeight/data) Data from the website FiveThirtyEight -- much of this is cleaned and used for their reporting.  If you use one of these datasets I expect you to link to an article of theirs using it!
* [GapMinder](https://www.gapminder.org/data/) GapMinder curates many public datasets into easy to use formats!
* [American National Election Studies](https://electionstudies.org/) Data from US elections, member of congress voting records, and many many more.
* [Data USA](https://datausa.io/) Another set of curated data, mostly reposts of other things findable from other places but in sometimes easier to use formats.
* [CDC Data](https://wonder.cdc.gov/) Download basically everything the CDC publishes.
* [US Federal Reserve, FRED](https://fred.stlouisfed.org/) Data on everything about the economy that the US Federal Reserve keeps track of.
* [US Department of Ag](https://quickstats.nass.usda.gov/) Get data on crop yields, school lunch programs, and many other things from the US department of agriculture.
* [Reddit Datasets](https://www.reddit.com/r/datasets/) A subreddit that points to other datasets that may be interesting.
* https://www.policedatainitiative.org/datasets/
* https://github.com/CSSEGISandData/COVID-19
* http://us-cities.survey.okfn.org/ 


### Github Pages
GitHub provides a service called Pages <https://pages.github.com/> that provides website hosting functionality backed by a GitHub-based git repository. We would like you to host your final project on a GitHub Pages project site. To do this, you will need to:
1. Create a GitHub account (or use the one you already have from Project0) with your username `username`.
  * Note: If you want to make it a repository specific webpage instead of your userpage then please go ahead.
2. Create a git repository titled `username.github.io`; make sure `username` is the same as whatever you chose for your global GitHub account.
3. Create a project within this repository. This is where you’ll dump your iPython Notebook file and an HTML export of that Notebook file.

These instructions are also given directly on the front page of <https://pages.github.com/>; following those instructions should be fine!

In order to make your webpage open up the notebook and make sure everything is as you like it (cells and outputs are showing, no error messages, etc.).  Then go to `File >> Download As >>` and download the notebook as HTML.  This will save the HTML files to your disk.  You will then need to rename this to index.html and upload it into your github.io page.  Once this is done, navigate to `username.github.io` and make sure the notebook is displayed as you like!

### Submission

You should submit the notebook through [Canvas](https://tulane.instructure.com/).  The first cell of your notebook in the markdown **must be a hyperlink in your notebook to the webpage at github.io, and the webpage must be publicly readable on the internet (i.e, live)**.  That is: the first cell of your notebook must be a markdown cell with a hyperlink to the generated webpage up at `yourname.github.io`.  If this is not correct you will lose points.

*Both students in the group must submit the notebook through Canvas but it should be the same notebook.  Both students should have the same data uploaded to the site.*

### Scoring Rubric (50 Points)
* (10 Points) *Professionalism*: You have used both code comments and markdown cells to professionally and clearly document your work including having a clear and clean notebook; linking to resources and documents; and doing so with code that is reasonable and efficient.  Your notebook is correct and contains the required links.  In addition, you have written code that is interpretable -- it contains comments where needed to understand, variable names are reasonable, and code that is reasonable and efficient. You have followed directions to turn in the file, clearly labeling everything. You have cited all sources and how you used them in the written portion of your answers.
* (10 Points) *Website*: Website is up, link was submitted and is correct.  Notebook is professional and clean, the names of the group members, a title for the project, and other good practices as this is *publicly posted*.
* (10 Points) *Project Plan*: Project plan is in place, relevant data is identified and links are provided, there are draft questions or hypothesis that the student is going to explore.  Plan clearly explains how the data could be used to answer the question and addresses whether or not other data is needed.
* (20 Points) *Extraction, Transform, and Load (ETL)*: At least one data set(s) are loaded correctly using web scraping other techniques.  The data is discussed in terms of what it is and how it could be used to answer the question of study.  Where the data comes from and how it is collected is clearly documented with links and other relevant details.  The data is imported and tidy according to the principles discussed in class.  Dtypes are set properly and displayed within the notebook, NaN's and other techniques are used following best practices discussed in class.

| Full    |    Good |  Okay |   Lacking   |   Poor  | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
| You completely and fully met the criteria described. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed components of the required criteria and/or they are incorrect / inappropriate or lack depth. | You have missed major components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

----

## Milestone 2: Additional Extraction, Transform, and Load (ETL) + Exploratory Data Analysis (EDA) - 10/29/2020.

Your notebook from Part 1 but expanded to include any necessary additional data being loaded and parsed into shape using the principles of tidy data discussed in class. This is to show that you have figured out how to get the data into your system.

In addition you should also have at least 5 graphs and summary statistics/tables including cross-tabulations, groups, measures of central tendency, and/or any of the other EDA techniques discussed showing that you have started to investigate your data and have an understanding of what is in your dataset.  These graphs should be documented much as we did in Project 1 where you describe what the graph is showing and why.  Use of appropriate Markdown cells is essential.

### Submission

You should submit the notebook through [Canvas](https://tulane.instructure.com/).  The first cell of your notebook in the markdown **must be a hyperlink in your notebook to the webpage at github.io, and the webpage must be publicly readable on the internet (i.e, live)**.  That is: the first cell of your notebook must be a markdown cell with a hyperlink to the generated webpage up at `yourname.github.io`.  If this is not correct you will lose points.

*If you do this in a group, both students must submit the notebook through Canvas but it should be the same notebook.  Both students should have the same data uploaded to the site.*

**Note:** If the dataset you are using is not available from a website then it must also be uploaded to your GitHub site.  If I cannot download the data to verify the code you have submitted you will lose points.

### Scoring Rubric (50 Points)

* (10 Points) *Professionalism*: You have used both code comments and markdown cells to professionally and clearly document your work including having a clear and clean notebook; linking to resources and documents; and doing so with code that is reasonable and efficient.  Your notebook is correct and contains the required links.  In addition, you have written code that is interpretable -- it contains comments where needed to understand, variable names are reasonable, and code that is reasonable and efficient. You have followed directions to turn in the file, clearly labeling everything. You have cited all sources and how you used them in the written portion of your answers.
* (20 Points) *Extraction, Transform, and Load (ETL)*: At least one data set(s) are loaded correctly using web scraping other techniques.  The data is discussed in terms of what it is and how it could be used to answer the question of study.  Where the data comes from and how it is collected is clearly documented with links and other relevant details.  The data is imported and tidy according to the principles discussed in class.  Dtypes are set properly and displayed within the notebook, NaN's and other techniques are used following best practices discussed in class.
* (20 Points) *Exploratory Data Analysis (EDA)*: At least 5 graphs and/or summary statistics/tables including cross-tabulations, groups, measures of central tendency, and/or any of the other EDA techniques discussed showing that you have started to investigate your data and have an understanding of what is in your dataset.  Each of these pieces of analysis should have a corresponding markdown cell that clearly explains what is being shown and why.

| Full    |    Good |  Okay |   Lacking   |   Poor  | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
| You completely and fully met the criteria described. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed components of the required criteria and/or they are incorrect / inappropriate or lack depth. | You have missed major components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

---

## Deliverable 1: Final Presentation - 11/19+24/2020.

You (and your partner) will give a 5-8 minute presentation in class to your peers.  In this presentation you are role playing a bit -- your job is to convince the audience that the problem you investigated was interesting and meaningful.  An ideal talk will cover every step of the Data Lifecycle that we have discussed in class: (1) an introduction of the problem and what question you want to solve, (2) where you got your data, (2) how you loaded and preprocessed your data, (3) some exploratory analysis to show important features, (4) a hypothesis about the data and supporting evidence, (5) an important conclusion to draw from your data.

Some resources for giving a good talk:
1. Simon Peyton Jones, [How To Give a Great Research Talk](https://www.microsoft.com/en-us/research/academic-program/give-great-research-talk/)
2. Matt Might, [10 Tips for Academic Talks](http://matt.might.net/articles/academic-presentation-tips/)

### Scoring Rubric (50 Points)

* (10 Points) *Professionalism*: Are the slides well constructed?  Are the graphs labeled and clear?  Did you speak clearly and have a plan for the discussion? 
* (10 Points) *Organization*: Was the talk clearly organized?  Did you explain where your data came from, why the question was important, and what the outcomes are?  You should address each stage of the DataScience LifeCycle in this talk.
* (10 Points) *Motivation*: Does the talk make the reader believe the topic is important (a) in general and (b) with respect to data science? Does the data you selected allow you to answer the question you set out for?  Is there a clear and explainable question being answered by this data?
* (10 Points) *Science*: Did you clearly explain why you performed the analyses you chose?  Did you adequately defend any assumptions you made?  Does your analysis support your conclusions?
* (10 Points) *Peer Evaluation*: Were you present in class both days during presentations, did you provide feedback to the other students on their projects and ask questions.  Were you a good peer?

| Full    |    Good |  Okay |   Lacking   |   Poor  | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
| You completely and fully met the criteria described. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed components of the required criteria and/or they are incorrect / inappropriate or lack depth. | You have missed major components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

### Schedule

**Note:** You must upload your slides through [Canvas](https://tulane.instructure.com/) before 10am on the day of your presentation.  Failure to do this will result in a minimum of 10 points lost for *Professionalism*.  As we will all be on Zoom you are responsible for being ready to share your screen and talk through your slides for 6 mins.

#### Presentations on 11/19

| Team Member 1     | Team Member 2       | Topic                                    | Link                                                     |
|-------------------|---------------------|------------------------------------------|----------------------------------------------------------|
| Casas, Isabella   | Kellner, Josh       | Stop and Frisk                           | https://icasas101.github.io/FinalDSTutorial/             |
| Donahue, Annie    | Prinz, Shay         | 911 Call Data                            | https://srprinz.github.io/CMPS3160_Final/                |
| Kuperman, Leah    | Simanonok, Leo      | Gentrification in NOLA                   | https://leosimanonok.github.io/DataScienceFinalTutorial/ |
| Lisi, Mark        | Tutuncuoglu, Sarper | NOLA Jobs                                | https://marklisi1.github.io/                             |
| Margulies, Daniel | Pluscht, Paul       | NOLA Restaurants                         | https://ppluscht.github.io/DSFinal/                      |
| Shanley, Erin     |                     | Food Access                              | https://eshanley.github.io/                              |
| Ojalvo, Marc      | Strougo, Kyle       | Income and Police Shootings              | https://mojalvo.github.io/                               |
| Rau, Matthew      |                     | Coronavirus and Problems                 | https://mrau1.github.io/                                 |
| Ballagh, Josh     | Waller, Ellen       | Public Education and Policy in Louisiana | https://ballaghjoshua.github.io/                         |
| Caplin, Mason     |                     | Mortality Rates                          | https://mcaplin98.github.io/                             |

#### Presentations on 11/24

| Team Member 1     | Team Member 2        | Topic                                        | Link                                             |
|-------------------|----------------------|----------------------------------------------|--------------------------------------------------|
| Bruchhaus, Sam    |                      | NFL Data                                     | https://sbruchhaus.github.io/                    |
| Geisberg, Jacob   | Harris, Gabe         | Fantasy Football Draft                       | https://jberg1999.github.io/Fantasy/             |
| Lyons, Molly      | Rinaldi, Phil        | Mouse Protein                                | https://prinaldi3.github.io/                     |
| Childs, Sam       | Rajasekaran, Vasanth | Travel Ratings                               | https://vasanth16.github.io/                     |
| Davis, Madison    | Sussman, Lauren      | World Happiness                              | https://lsussman1.github.io/DataScienceTutorial/ |
| Doochin, Rebekah  | Ziman, David         | Housing                                      | https://rdoochin.github.io/                      |
| Ellsworth, Daniel | Pratt, Alden         | Sentiment Analysis on Twitter / Stock Prices | https://danellsworth.github.io/                  |
| Hardy, Lindsay    | O'Connell, Emily     | MOMA Dataset                                 | https://lindsayhardy17.github.io/                |
| Jesusa, Sara      |                      | Song Popularity                              | https://sjesusa1.github.io/                      |
| Levyne, Aidan     | Streit, Dave         | Music Popularity                             | https://dwstreit.github.io/                      |
| Chiariello, Sarah |                      | Cervical Cancer                              | https://schiariello.github.io/                   |


### Submission

You should submit your slides (PDF, Powerpoint, or Keynote only) through [Canvas](https://tulane.instructure.com/) before 10am on the day of your presentation.  Both students in groups should submit the same set of slides.  **If you do not sign in for class these days and engage with the discussion you will not receive points for the Peer Evaluation section.**

*If you do this in a group, both students must submit the set of slides through Canvas.*


## Deliverable 2: Final Tutorial - 11/24/2020.

In general, the tutorial should contain at least 1500 words of prose and 150 lines of (nonpadded, legitimate) Python code, along with appropriate documentation, visualization, and
links to any external information that might help the reader.

### Scoring Rubric (100 Points)
* (10 Points) *Motivation*: Does the tutorial make the reader believe the topic is important (a) in general and (b) with respect to data science?  Is there a clear, coherent argument for this at the beginning of the notebook?
* (10 Points) *Understanding*: After reading the tutorial, does the reader understand the topic?
* (10 Points) *Prose and Professionalism.* Does the prose in the Markdown portion of the .ipynb add to the reader’s understanding of the tutorial?  Are the graphs labeled and clear? Is the writing clear and explained well.
* (10 Points) *Organization/Professionalism*: Was the notebook clearly organized?  Did you explain where your data came from, why the question was important, and what the outcomes are?  There should be a section heading for each step of the Data Science LifeCycle.
* (20 Points) *Data*: Is the data selected appropriate? is it loaded in a coherent way? clean and Tidy? Dtypes set? are there issues in the data and if so are they explained? is enough data present and if not, why not? Is the data manipulated properly and coherently?
* (20 Points) *Code*: Does the code help solidify understanding, is it well documented, and does it include helpful examples?  Is the code correct?  Did you show that the results of intermediate steps are correct in the tutorial?  Is there enough code to be complex enough to require a tutorial?
* (10 Points) *Science.* Did you clearly explain why you performed the analyses you chose?  Did you adequately defend any assumptions you made? Does your analysis support your conclusions?
* (5 Points) *Subjective Evaluation.* If somebody linked to this tutorial from Hacker News, Reddit, Towards Data Science, or some other general interest website, would people actually read the whole thing?
* (5 Points) *Further Resources.* Does the tutorial “call out” to other resources that would help the reader understand basic concepts, deep dive, related work, etc?

| Full    |    Good |  Okay |   Lacking   |   Poor  | No Marks |
| : ---- :| : ---- :| : ---- :| : ---- :| : ---- :| : ---- : |
| You completely and fully met the criteria described. | You have met most of the criteria but lack sufficient depth and/or missed one or more minor pieces. | You have missed components of the required criteria and/or they are incorrect / inappropriate or lack depth. | You have missed major components of the required criteria and/or may of them are incorrect. | Little to no evidence of work and major missing components. | Missing or completely inadequate. | 

### Submission

You should submit the notebook through [Canvas](https://tulane.instructure.com/).  The first cell of your notebook in the markdown **must be a clickable link to the webpage and the webpage must be live**.  That is: the first cell of your notebook must be a markdown cell with a hyperlink to the generated webpage up at `yourname.github.io`.  If this is not correct you will lose points.

*If you do this in a group, both students must submit the notebook through Canvas but it should be the same notebook.  Both students should have the same data uploaded to the site.*

**Note:** If the dataset you are using is not available from a website then it must also be uploaded to your GitHub site.  If I cannot download the data to verify the code you have submitted you will lose points.


