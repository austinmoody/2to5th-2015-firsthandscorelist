# First Hand High Five Scores list

Submission for the Cerner 2015 2^5.

This is a companion piece to the First Hand High Five game found [here](https://github.com/austinmoody/2to5th-2015-firsthandhighfive).  Gives you the ability to view a web page that displays the fastest high five scores for people who have been playing the game.  Once the page is loaded it will update in realtime as people play.

This is written in [CoffeeScript](http://coffeescript.org/).

The code resides in highfivescores.coffee and is 31 lines per cloc:

<pre>
http://cloc.sourceforge.net v 1.60  T=0.01 s (97.1 files/s, 4175.6 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
CoffeeScript                     1             10              2             31
-------------------------------------------------------------------------------
</pre>

I wasn't including the HTML file in this count... so if that must count I guess this is disqualified :)

The CoffeeScript must be compiled to JavaScript for the <script> include in the HTML page to work.

<pre>coffee --compile highfivescores.coffee</pre>

A live version of this can be viewed here: http://austinmoody.org/firsthandscores/
