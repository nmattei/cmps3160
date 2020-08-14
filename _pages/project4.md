---
layout: page
title: Project 4: Reinforcement Learning
published: true
---

## Project 4: Reinforcement Learning

**Note:** For Project 4 you are allowed to work in teams of size 2.  If you complete the project in a team both of you must turn in exactly the same assignment through Canvas.  In your writeup you must clearly label whom you worked with and **how you worked together**.  Examples include: we setup a private Github repo to coordinate code and we met on Zoom X times.... or even we used [Teletype for Atom](https://teletype.atom.io/) or [RemoteCollab for Sublime](https://packagecontrol.io/packages/RemoteCollab).  Failure to turn in a collaboration plan that shows you coordinated will be a loss of professionalism points.  The turned in result will need to reflect the understanding of both students as we are still going to ask questions about this Project on the final!

### The Assignment

Navigate over to the [Berkeley Site for the PacMan Projects](https://inst.eecs.berkeley.edu/~cs188/fa18/projects.html) and specifically look at the one for [Reinforcement Learning](https://inst.eecs.berkeley.edu/~cs188/fa18/project3.html).  **Note:** There are a number of versions of these projects.  Please make sure you are following the links from the course website!

We'll be doing the third project: [Reinforcement Learning](https://inst.eecs.berkeley.edu/~cs188/fa18/project3.html).  **Complete only the subset of questions asked below and ensure that your solution passes the autograder for those questions.  Not all questions are required and a few are labeled as BONUS!**

This project is designed to test both your Python3 knowledge, you ability to work with code written by others, and most importantly, your understanding of search and heuristics.

When writing your code you should make use of the `util.py` when making data structures.  In general it is good to look at the files `pacman.py`, `game.py`, and `util.py` to make sure you have an understanding of the way the game is represented.

**Note: Read the directions closely on the Berkeley page... there are lots of hints.**

### What To Turn In!

Turn in through [Canvas](https://tulane.instructure.com/). You should submit a Zip file that contains `valueIterationAgents.py`, `qlearningAgents.py`, and `analysis.py`,  as well as a text file that captures the **entire output** of the autograder.  Name the output capture `Lastname.Autograder.txt/pdf/docx`.

You should also include answers to the *written portion* questions below in your zip file.  This should be named `Lastname.WrittenAnswers.pdf/docx/txt`.

You should rename the folder (before zipping it) to `Lastname.Project4`. Please make sure to zip and submit **only the files specifically listed here**.  You are not to modify any other files than the ones listed here, if you do we will not be able to run your code and you will lose points.

### Grading Rubric

Note that for all of these projects simply passing the autograder is not sufficient to ensure full credit.  We will include comments to why points were taken away -- if you are still confused Arie and Dr. Mattei are available to talk to you and provide explanations.  

We expect all code to be written in a professional manner. That means there are comments where there needs to be, that the code is written in a general way that is (reasonably) efficient, and that you use naming conventions that others can understand.  If we open your code and we can't understand it, you will lose points even if it works.

**Note:** For Project 4 you are allowed to work in teams of size 2.  If you complete the project in a team both of you must turn in exactly the same assignment through Canvas.  In your writeup you must clearly label whom you worked with and **how you worked together**.  Examples include: we setup a private Github repo to coordinate code and we met on Zoom X times.... or even we used [Teletype for Atom](https://teletype.atom.io/) or [RemoteCollab for Sublime](https://packagecontrol.io/packages/RemoteCollab).  Failure to turn in a collaboration plan that shows you coordinated will be a loss of professionalism points.  The turned in result will need to reflect the understanding of both students as we are still going to ask questions about this Project on the final!

**Note: Skip problems Question 4 and Question 5.  Only Question 10 is BONUS.**

* (10 Points) *Professionalism*: You have written code that is interpretable -- it contains comments where needed to understand, variable names are reasonable, and code that is reasonable and efficient.  You have followed directions to turn in the file, clearly labeling everything.  You have cited all sources and how you used them in the written portion of your answers.
* (20 Points) *Question 1: Value Iteration.* You have written code for the value iteration algorithm that is general and passes the required tests.  
* (5 Points) *Question 2: Bridge Crossing Analysis.* You have found a setting to the parameters that evokes the requested behavior.  You have discussed the results satisfactorily in the discussion part.
* (5 Points) *Question 3: Policies.* You have found setting to the various parameters to get all five requested behaviors.  You have discussed the results satisfactorily in the discussion part.
* (20 Points) *Question 6: Q-Learning.* You have implemented Q-Learning as described in the course and it is general and passes the required tests.
* (10 Points) *Question 7: Epsilon Greedy.* You have implemented the epsilon greedy action selection algorithm and it is correct, general, and passes the required tests.
* (5 Points) *Question 8: Bridge Crossing Revisited.* You have found a setting to the parameters that evokes the requested behavior.  You have discussed the results satisfactorily in the discussion part.
* (5 Points) *Question 9: Q-Learning and Pacman.* You have implemented Q-Learning for Pacman and can reliably win on the small boards.
* (20 Points) *Question 10 BONUS: Approximate Q-Learning.* You have implemented approximate Q-learning and passed all the required tests.  Congrats, you now have a fast, efficient, self-teaching Pacman (and 20 bonus points)!
* (20 Points) *Written Portion.* Several of the questions ask you to investigate the behavior of the algorithms in various settings.  Include a file with **~1-2 paragraph** answers to the following questions.  Even if you are not able to complete the code, you may be able to discuss some of these questions and the response you should expect.
	* Question 2: Discuss what you tried to get the optimal policy to cross the bridge.  Why did this work?  Could you have done something else?
	* Question 3: For each of the 5 policies you set, discuss each.  Why did these values work?  What did you try that did not?  
	* Question 6: Try a few settings to `-k` to change how long your agent has to learn.  Discuss the settings you tried and how the behavior changed (note, you should be comprehensive enough here to see a change).  Why did this happen?
	* Question 7: As requested, play around with the various settings for the crawler including learning rate and epsilon.  What differences do these parameters make?  What behavior are you seeing change?  Why?
	* Question 8: What settings did you end up finding for this problem?  Did it work?  Why or why not?
	* Question 9: Discuss how your Pacman is doing.. what happens on the larger mazes?  If we change the learning parameters, does he do better?  Why or why not?
* Total Score: 100