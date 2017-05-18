"""


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

