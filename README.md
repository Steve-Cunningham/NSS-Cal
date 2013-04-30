Cal for NSS Part II
I want to be able to accept 2 arguments and use those to build a "month_header" consisting of the month and year that is centered.  I have worked through this section and have gotten a lot more confident in my programming.
I am working on the situation where the user enters the month name instead of a number.  I've figured out in Cal that if you put the first 3 letters of a month it works.  For example, Sep 1954 returns the month, where Se 1954 doesn't.  Also, if you use at least the first 3 letters, it works... SepJay 1954 works as well as SepCanada 1954 to return September 1954.
The "day_header" will be a consistent line that consists of each day "Su Mo Tu We Th Fr Sa".
Using Zellars Congruence, we will establish what day of the week the first day lands on.
We must find out how many weeks are in any given month.  This will allow us to print out every day.
Cal responds with a 12 month answer if only the year is entered.  This will need to be integrated.
I'm really liking this TDD stuff.  It's a bit of a learning curve to not just jump in and start biting off big chunks at first.  Thanks for helping us get this stuff going!