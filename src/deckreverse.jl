"""
Cuts a deck and complete the cut

deckout = deckreverse(deck);

"""

function deckreverse(deck);

indexin=collect(1:nfields(deck));

indexout=indexin[end:-1:1]

#@show indexout
return deck[indexout]

end

