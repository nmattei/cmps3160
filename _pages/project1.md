---
layout: page
title: Project 1: Search
published: true
---

## Project 1: Search!

Note that there seems to be some issues with TKinter and newer versions of Python (above 3.7) on the newest version of MacOS.  If your computer randomly logs you out when you try to run PacMan then [please try the tips here](https://www.python.org/download/mac/tcltk/#built-in-8-6-8), or simply downgrade Tkinter using the command: `conda install tk=8.6.7`

### The Assignment

Navigate over to the [Berkeley Site for the PacMan Projects](https://inst.eecs.berkeley.edu/~cs188/fa18/projects.html).  **Note:** There are a number of versions of these projects.  Please make sure you are following the links from the course website!

We'll be doing the second project: [Search](https://inst.eecs.berkeley.edu/~cs188/fa18/project1.html).  Complete the eight questions in the assignment and ensure that your solution passes the autograder.

This project is designed to test both your Python3 knowledge, you ability to work with code written by others, and most importantly, your understanding of search and heuristics.

When writing your code you should make use of the `util.py` when making data structures.  In general it is good to look at the files `pacman.py`, `game.py`, and `util.py` to make sure you have an understanding of the way the game is represented.

**Note: Read the directions closely on the Berkeley page... there are lots of hints.**

### What To Turn In!

Turn in through [Canvas](https://tulane.instructure.com/). You should submit a Zip file that contains **only the `search.py` and `searchAgents.py` files** as well as a text file that captures the **entire output** of the autograder.  Name the output capture `Lastname.Autograder.txt/pdf/docx`.

You should also include answers to the *written portion* questions below in your zip file.  This should be named `Lastname.WrittenAnswers.pdf/docx/txt`.

You should rename the folder (before zipping it) to `Lastname.Project1`. Please make sure to zip and submit **only the files specifically listed here**.  You are not to modify any other files than the ones listed here, if you do we will not be able to run your code and you will lose points.

### Grading Rubric

Note that for all of these projects simply passing the autograder is not sufficient to ensure full credit.  We will include comments to why points were taken away -- if you are still confused Arie and Dr. Mattei are available to talk to you and provide explanations.  

We expect all code to be written in a professional manner. That means there are comments where there needs to be, that the code is written in a general way that is (reasonably) efficient, and that you use naming conventions that others can understand.  If we open your code and we can't understand it, you will lose points even if it works.

* (10 Points) *Professionalism*: You have written code that is interpretable -- it contains comments where needed to understand, variable names are reasonable, and code that is reasonable and efficient.  You have followed directions to turn in the file, clearly labeling everything.  You have cited all sources and how you used them in the written portion of your answers.
* (10 Points) *Question 1: Finding a Fixed Food Dot using Depth First Search.* You have written code for DFS that is general and passes the required tests.
* (10 Points) *Question 2: Breadth First Search* You have written code for BFS that is efficient, general, and passes required tests.  Works for different puzzles.
* (10 Points) *Question 3: Varying the Cost Function.* You have written code that is reasonable, general, and passes the required tests.
* (10 Points) *Question 4: A\* search.* You have written code that is reasonable, general, and passes the required tests.
* (10 Points) *Question 5: Varying the Cost Function.* You have written code that is reasonable, general, and passes the required tests.
* (10 Points) *Question 6: Corners Problem: Heuristic.* You have written code that is reasonable, general, and passes the required tests.  Note that here efficiency may affect your score, but your explanation below carries weight as well!
* (10 Points) *Question 7: Eating All The Dots.* You have written code that is reasonable, general, and passes the required tests.  Note that here efficiency may affect your score, but your explanation below carries weight as well!
* (10 Points) *Question 8: Suboptimal Search.* You have written code that is reasonable, general, and passes the required tests.
* (20 Points) *Written Portion.* Several of the questions ask you to investigate the behavior of the algorithms in various settings.  Include a file with **~1 paragraph** answers to the following questions. Even if you are not able to complete the code, you may be able to discuss some of these questions and the response you should expect.
  * Question 4: What happens when you run A* on `OpenMaze` with the Manhattan heuristic?  Why?
  * Question 5: What did you choose to include in your game state?  Why?  How many nodes does BFS expand in your representation?
  * Question 6: What did you choose as a heuristic?  Why?  Argue (i.e., prove) why it is admissible.  How many game states did it explore?
  * Question 7: What did you choose as a heuristic?  Why?  Argue (i.e., prove) that it is consistent.  How many game states did it explore?
  * Question 8: Describe a condition or a small example where `ClosestDotSearchAgent` will fail.


* Total Score: 100 Points