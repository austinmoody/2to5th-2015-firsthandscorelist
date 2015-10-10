# First Hand High Five Scores list

Submission for the Cerner 2015 2^5.

This is a companion piece to the First Hand High Five game found [here](https://github.com/austinmoody/2to5th-2015-firsthandhighfive).

This is written in [CoffeeScript](http://coffeescript.org/).

The code resides in highfivescores.coffee and is 32 lines per cloc:

<pre>
http://cloc.sourceforge.net v 1.60  T=0.01 s (93.0 files/s, 4184.8 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
CoffeeScript                     1             11              2             32
-------------------------------------------------------------------------------
</pre>

I wasn't including the HTML file in this count... so if that must count I guess this is disqualified :)

The CoffeeScript must be compiled to JavaScript for the <script> include in the HTML page to work.

<pre>coffee --compile highfivescores.coffee</pre>
