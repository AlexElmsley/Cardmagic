"""
Collects a series of packets back into the deck. 
Without argument in the order of the packets.
If order="Random" is provided, the order is random.
Otherwise the order specified in the array order is used

"""

function deckcollect(deck;order=[]);



deckin=deepcopy(deck)

if order!=[]

	if order=="Random"
		deckin=deckrandomize(deckin)
    else
		deckin=deckin[order]
	end

end
	
	
	deckout=[]


	





for i=1:nfields(deckin)

	deckout=(deckout...,deckin[i]...)

end

return deckout

end

