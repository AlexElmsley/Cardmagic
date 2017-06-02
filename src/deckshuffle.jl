"""


"""

function deckshuffle(deck,ntimes=3;method="Riffle",blocksize=4);

deckout=[]

if method=="Riffle"
	for i=1:ntimes
		deckout=deckriffle(deckcut(deck,26;errormargin=30),blocksize)
	end
end

if method=="Overhand"
    indexes=collect(1:nfields(deck))
	for i=1:ntimes

     	
		indexesout=[]
		cardsleft=size(indexes)[1]
		
		while cardsleft>0
		tocut=mod(rand(Int),2*blocksize)+1
		#@show tocut,cardsleft
		tocut=minimum([cardsleft,tocut])
		cardsleft=cardsleft-tocut
		indexesout=[indexes[1:tocut]...,indexesout[1:end]...]
		indexes=[indexes[1+tocut:end]...]
		end
        #@show indexesout		
		indexes=indexesout
		indexesout=[]
	
	end
    deckout=deck[indexes]	
end

return deckout

end

