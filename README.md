ml-python-class
=====================

Material developed for [Texas A&M University -
Commerce](http://tamuc.edu) course CSci 538: Introduction to Machine
Learning and Data Analysis.  These materials were developed in the
Fall of 2013 semester.  The original iPython notebooks were created in
2012 by Hannes Schulz, Andreas Mueller and Nenard Birešev at the
University of Bonn
[original github repo](https://github.com/amueller/tutorial_ml_gkbionics).  
I have taken the original material and expanded it for our course.

Content
-------

- The slides are at [``presentation/presentation_screen.pdf``](https://github.com/amueller/tutorial_ml_gkbionics/raw/master/presentation/presentation_screen.pdf)

- The interactive notebooks are in the main folder.

Viewing the notebooks online
----------------------------

The content of the notebooks can be viewed online through nbviewer.ipython.org.
This is **not interactive**. You need to install Python on your computer to use the notebooks interactively.

- [0 - Python Intro.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/0%2520-%2520Python%2520Intro.ipynb)
- [1 - PCA.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/1%2520-%2520PCA.ipynb)
- [2 - KMeans.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/2%2520-%2520KMeans.ipynb)
- [3a - Linear regression 1D.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/3a%2520-%2520Linear%2520regression%25201D.ipynb)
- [3b - Linear regression 2D.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/3b%2520-%2520Linear%2520regression%25202D.ipynb)
- [4 - Logistic Regression.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/4%2520-%2520Logistic%2520Regression.ipynb)
- [5 - k Nearest Neighbors.ipynb](http://nbviewer.ipython.org/urls/raw.github.com/temporaer/tutorial_ml_gkbionics/master/5%2520-%2520k%2520Nearest%2520Neighbors.ipynb)

More content
------------

- The latex source code for the slides is contained in ``presentation``.
- The notebooks used to generating some of the figures on the slides is in ``working_notebooks``.


Suggested material for learning python:

- [Think Python: How to think like a computer scientist](http://www.greenteapress.com/thinkpython/) free online textbook, very good resource for not only Python but learning to program in general.
- [Google Developers Python Class](https://developers.google.com/edu/python/?hl=ru&csw=1) short course with videos, might be helpful for those looking for video tutorials of Python.
- [Software Carpentry](http://software-carpentry.org/v4/python/index.html) section on learning Python is also very good, and also includes videos.

Companion Textbooks on Machine Learning:

- Segaran. (2007). [Programming Collective Intelligence](http://www.amazon.com/Programming-Collective-Intelligence-Building-Applications/dp/0596529325/ref=sr_1_1?ie=UTF8&qid=1376624477&sr=8-1&keywords=segaran+programming+collective+intelligence).
  Already 6 years old, so a bit out of date, and as far as I know no new
  editions.  But I will develop some of my optimization and decision
  tree examples from here.   [Code examples](http://blog.kiwitobes.com/?p=44)

- Marsland. (2009). [Machine Learning: An Algorithmic Perspective](http://www.amazon.com/Machine-Learning-Algorithmic-Perspective-Recognition/dp/1420067184/ref=sr_1_1?ie=UTF8&qid=1376624555&sr=8-1&keywords=machine+learning+an+algorithmic+perspective).
  More examples of Python ML.  [Code examples](http://seat.massey.ac.nz/personal/s.r.marsland/MLbook.html)

- Conway & White. (2012). [Machine Learning for
  Hackers](http://www.amazon.com/Machine-Learning-Hackers-Drew-Conway/dp/1449303714/ref=sr_1_1?ie=UTF8&qid=1376624747&sr=8-1&keywords=machine+learning+for+hackers). [github repo of book source and data](https://github.com/johnmyleswhite/ML_for_Hackers)
  Case studies for this book are written in R.  This site 
  [Will it Python](http://slendrmeans.wordpress.com/will-it-python/)
  has example reimplementations in iPython notebooks.
  


Installing Python
-----------------

For a true interactive use of the notebooks (which you are required to
use if you are taking the class) you need to install Python, IPython
(for notebooks) and the required libraries scikit-learn, matplotlib
and numpy.

Windows
-------
You can install everything at once using a complete scientific Python distribution.
Two good ones are the [Enthought Python distribution](http://www.enthought.com/products/epd.php) (EPD, free for academic use) or  [Python-(x, y)](http://code.google.com/p/pythonxy/) (free for everyone).

Mac
---
For OS X, you can also use the [Enthought Python distribution](http://www.enthought.com/products/epd.php) or the [scipy-superpack](http://fonnesbeck.github.com/ScipySuperpack/).


Linux
-----
Just use your package manager, for example on ubuntu or debian, use
``apt-get install python ipython python-matplotlib python-numpy python-sklearn``.

Version requirements
--------------------
You need to make sure to have at least IPython >= 0.11 installed. You can update using the programm ``easy_install``.

Installing Scikit-learn
-----------------------
More tips on installing scikit-learn can be found on the [scikit-learn website](http://scikit-learn.sourceforge.net/dev/install.html#installing-an-official-release).


More Resources
--------------
- The [scikit-learn example gallery](http://scikit-learn.sourceforge.net/dev/auto_examples/index.html) and [user guide](http://scikit-learn.sourceforge.net/dev/user_guide.html).
- [Videos and presentations](http://scikit-learn.sourceforge.net/dev/presentations.html) on machine learning and scikit-learn.
- The [matplotlib example gallery](http://matplotlib.org/gallery.html).
- [Numpy for matlab users](http://www.scipy.org/NumPy_for_Matlab_Users).

