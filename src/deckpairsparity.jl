"""
Example of how to check cards in pairs (think Gilbreath)

"""

function deckpairsparity(deck);

ncards=nfields(deck)

indexin=collect(1:ncards)

# For the momement two piles 


pairs=[]

for i=1:ncards/2

if mod(deck[2*i]+deck[2*i-1],2)==0

	pairs=push!(pairs,(deck[2*i],deck[2*i-1]))

end

end

return pairs

end

