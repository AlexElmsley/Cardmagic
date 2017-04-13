"""
Cuts a deck

deckout = deckcut(deck,where=[]; errormargin=0);

Cuts the deck at random of no paramter is provided. If a parameter is provided it
is cut at the position defined otherwise a random position.

If errormargin is provided, the cut is done around the specified value

Everything is modulo (so if errormargin is 10 and a cut at 3 is demanded it might be that the cut it at the bottom)

Maybe to change ...

# Input:


"""

function deckcut(deck,where=[]; errormargin=0);

ncards=nfields(deck)

indexin=collect(1:ncards)

if where==[]
	where=rand(Int)
end

where=where+Int(round(errormargin*randn(1)[1]))

where=mod(where,ncards)

#indexout=[ indexin[where+1:end]...,indexin[1:where]...]
indexout1=[indexin[1:where]...]
indexout2=[indexin[where+1:end]...]

#return deck[indexout]
return deck[indexout1],deck[indexout2]

end

