---
layout: page
title: Project 2: Multiagent Search
published: true
---

## Project 2: Multiagent Search

Note that there seems to be some issues with TKinter and newer versions of Python (above 3.7) on the newest version of MacOS.  If your computer randomly logs you out when you try to run PacMan then [please try the tips here](https://www.python.org/download/mac/tcltk/#built-in-8-6-8), or simply downgrade Tkinter using the command: `conda install tk=8.6.7`

### The Assignment

Navigate over to the [Berkeley Site for the PacMan Projects](https://inst.eecs.berkeley.edu/~cs188/fa18/projects.html).  **Note:** There are a number of versions of these projects.  Please make sure you are following the links from the course website!

We'll be doing the third project: [Multiagent Search](https://inst.eecs.berkeley.edu/~cs188/fa18/project2.html).  Complete the five questions in the assignment and ensure that your solution passes the autograder.

This project is designed to test both your Python3 knowledge, you ability to work with code written by others, and most importantly, your understanding of search and heuristics.

When writing your code you should make use of the `util.py` when making data structures.  In general it is good to look at the files `pacman.py`, `game.py`, and `util.py` to make sure you have an understanding of the way the game is represented.

**Note: Read the directions closely on the Berkeley page... there are lots of hints.**

### What To Turn In!

Turn in through [Canvas](https://tulane.instructure.com/). You should submit a Zip file that contains **only the `search.py` and `searchAgents.py` from project 1 if you used it and `multiAgents.py` files** as well as a text file that captures the **entire output** of the autograder.  Name the output capture `Lastname.Autograder.txt/pdf/docx`.

You should also include answers to the *written portion* questions below in your zip file.  This should be named `Lastname.WrittenAnswers.pdf/docx/txt`.

You should rename the folder (before zipping it) to `Lastname.Project2`. Please make sure to zip and submit **only the files specifically listed here**.  You are not to modify any other files than the ones listed here, if you do we will not be able to run your code and you will lose points.

### Grading Rubric

Note that for all of these projects simply passing the autograder is not sufficient to ensure full credit.  We will include comments to why points were taken away -- if you are still confused Arie and Dr. Mattei are available to talk to you and provide explanations.  

We expect all code to be written in a professional manner. That means there are comments where there needs to be, that the code is written in a general way that is (reasonably) efficient, and that you use naming conventions that others can understand.  If we open your code and we can't understand it, you will lose points even if it works.

* (10 Points) *Professionalism*: You have written code that is interpretable -- it contains comments where needed to understand, variable names are reasonable, and code that is reasonable and efficient.  You have followed directions to turn in the file, clearly labeling everything.  You have cited all sources and how you used them in the written portion of your answers.
* (10 Points) *Question 1: Reflex Agent.* You have written code for a reflex agent that is general and passes the required tests.  Note that we will run your agent on the `openClassic` layout some number of times.  If your agent times out or never wins, you will get 0 points.  If your agent wins all the games, your score will be better.
* (10 Points) *Question 2: Minimax.* You have written code for a minimax agent that is general and passes the required tests.
* (15 Points) *Question 3: Alpha-Beta Pruning.* You have written code for an agent that uses Alpha-Beta pruning that is general and passes the required tests.  Note that your agent will still lose sometimes here.
* (15 Points) *Question 4: Expectimax.* You have written code for a minimax that is general and passes the required tests.
* (20 Points) *Question 5: Evaluation Function.* You have written code for an evaluation function agent that is general and passes the required tests.  This function will be scored based on its quality and speed.
* (20 Points) *Written Portion.* Several of the questions ask you to investigate the behavior of the algorithms in various settings.  Include a file with **~1 paragraph** answers to the following questions. Even if you are not able to complete the code, you may be able to discuss some of these questions and the response you should expect.
	* Question 1: Give the intuition behind your reflex agent.  Why did it work?  What did you try that didn't work?
	* Question 2: What happens as you increase the search depth for your minimax agent?  Why do you think this is?
	* Question 3: Compare the stright minimax agent to an Alpha-Beta pruning agent.  How much better or worse is it?  Why?
	* Question 4: Give some intuition as to why (or why not) your expectimax agent is working better than the other agents.
	* Question 5: Give the intuition behind your evaluation function.  Why did it work?  What did you try that did not work?

* Total Score: 100