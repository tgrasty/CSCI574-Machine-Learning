1# ml-python-class

Material developed for [Texas A&M University -
Commerce](http://tamuc.edu) course CSci 574: Introduction to Machine
Learning and Data Analysis.  These materials were developed in the
Fall of 2013 semester.  The original iPython notebooks were created in
2012 by Hannes Schulz, Andreas Mueller and Nenard Birešev at the
University of Bonn
[original github repo](https://github.com/amueller/tutorial_ml_gkbionics).  
I have taken the original material and expanded it for our course.

The materials have been updated for the Fall of 2015 semester.  Materials
from Dr. Ng Coursera [machine learning](https://www.coursera.org/learn/machine-learning/home/welcome) course were used extensively for the updates and assignments.

## Content

- The main content of the course will be delievers as interactive
  ipython/Jupyter notebooks.
- The lecture notebooks can be found in
  the lectures subdirectory, and all assignments for the course will
  be uploaded to the assignments subdirectory.



## More content

Suggested material for learning python:

- [Think Python: How to think like a computer scientist](http://www.greenteapress.com/thinkpython/) free online textbook, very good resource for not only Python but learning to program in general.
- [Google Developers Python Class](https://developers.google.com/edu/python/?hl=ru&csw=1) short course with videos, might be helpful for those looking for video tutorials of Python.
- [Software Carpentry](http://swcarpentry.github.io/python-novice-inflammation/) section on learning Python is also very good, and also includes videos.

Companion Textbooks on Machine Learning:

- Segaran. (2007). [Programming Collective Intelligence](http://www.amazon.com/Programming-Collective-Intelligence-Building-Applications/dp/0596529325/ref=sr_1_1?ie=UTF8&qid=1376624477&sr=8-1&keywords=segaran+programming+collective+intelligence).
  Already 6 years old, so a bit out of date, and as far as I know no new
  editions.  But I will develop some of my optimization and decision
  tree examples from here.   [Code examples](https://github.com/uolter/PCI)

- Marsland. (2009). [Machine Learning: An Algorithmic Perspective](http://www.amazon.com/Machine-Learning-Algorithmic-Perspective-Recognition/dp/1420067184/ref=sr_1_1?ie=UTF8&qid=1376624555&sr=8-1&keywords=machine+learning+an+algorithmic+perspective).
  More examples of Python ML.  [Code examples](http://seat.massey.ac.nz/personal/s.r.marsland/MLbook.html)

- Conway & White. (2012).
  [Machine Learning for Hackers](http://www.amazon.com/Machine-Learning-Hackers-Drew-Conway/dp/1449303714/ref=sr_1_1?ie=UTF8&qid=1376624747&sr=8-1&keywords=machine+learning+for+hackers). [github repo of book source and data](https://github.com/johnmyleswhite/ML_for_Hackers)
  Case studies for this book are written in R.  This site 
  [Will it Python](http://slendermeans.org/pages/will-it-python.html)
  has example reimplementations in iPython notebooks.
  


## Getting Started

Before the end of the first week of class, you need to get a working
Python distribution installed on your personal machine, and you need
to clone a copy of our class repository.  The following video should
help you in getting started

http://derekharter.com/class/fall2017/getting-started.webm

In order to do the class lectures and readings, you need to be able to
run and execute Jupyter notebooks.  In general, you need to complete
the following 4 steps.

1. Download and install a Python Distribution, such as Anaconda or
   Enthought python distributions, that includes support for Jupyter
   notebooks.
2. Download and install a git client on your machine.
3. Clone the class repository.
4. Test out Python, running Jupyter notebooks, and that you can access
   and execute the course lecture notebooks with your system setup.

### Download and Install a Python Distribution

For this course we recommend using a Python scientific distribution.
We recommend using the Anaconda distribution, though the Enthought
Canopy distribution should be fine as well.

- [Anaconda Distribution Download](https://www.anaconda.com/download/)
- [Enthought Canopy Distribution Download](https://store.enthought.com/downloads/)

Whether you are using Windows, Mac or Linux, the linked to installers
should work for you.  We are still using Python version 2.7 for this class,
so please download and install the 2.7 version of the installer.

### Download and Install Git Client

For Linux or Mac users, if git is not already installed you can probably
most easily use the standard package management systems of your OS to
install git.  For Windows, or to install it by hand on Linux/Mac, you
should get the package from the SCM git site:

- [Git download package](https://git-scm.com/downloads)

### Clone Class Repository

The class repository for our Introduction to Computational Science class
can be found at: https://bitbucket.org/dharter/intro-compsci-class

To clone the repository from a dos terminal or command line prompt, once
git is installed, do the following

    $ git clone https://bitbucket.org/dharter/ml-python-class.git


### Test Python, Jupyter and Class Notebooks

There are multiple ways to start up a Jupyter notebook server on your
system once you have Python and Jupyer installed.  From a dos prompt
or the command line, first change to the directory where you cloned
your class repository into, and then execute the command

    $ jupyter notebook

This will start up a notebook server, and on most systems will open
up a file browser inside of your default web browser, in order for
you to browse and select iPython notebooks for execution.


## Installing Scikit-learn

More tips on installing scikit-learn can be found on the [scikit-learn website](http://scikit-learn.sourceforge.net/dev/install.html#installing-an-official-release).  If you used the Enthought Python distribution, I believe they will be installed for you as part of that distribution.


## More Resources

- The [scikit-learn example gallery](http://scikit-learn.sourceforge.net/dev/auto_examples/index.html) and [user guide](http://scikit-learn.sourceforge.net/dev/user_guide.html).
- [Videos and presentations](http://scikit-learn.sourceforge.net/dev/presentations.html) on machine learning and scikit-learn.
- The [matplotlib example gallery](http://matplotlib.org/gallery.html).
- [Numpy for matlab users](http://www.scipy.org/NumPy_for_Matlab_Users).

