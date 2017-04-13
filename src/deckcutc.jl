"""
Cuts a deck and complete the cut


deckout = deckcutc(deck,where=[]; errormargin=0);

Cuts the deck at random of no paramter is provided. If a parameter is provided it
is cut at the position defined otherwise a random position.

If errormargin is provided, the cut is done around the specified value

Everything is modulo (so if errormargin is 10 and a cut at 3 is demanded it might be that the cut it at the bottom)

Maybe to change ...

# Input:


"""

function deckcutc(deck,where=[]; args...);

p1,p2=deckcut(deck,where; args...);

return (p2...,p1...)

end

