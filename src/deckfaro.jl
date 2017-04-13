"""
Faro shuffle a deck

deckout = deckfaro(deck1,deck2; version="out",starting="bottom");




"""

function deckfaro(deck; version="out",starting="bottom");

if starting=="top"

deck1=deck[1]
deck2=deck[2]

        else

deck1=deckreverse(deck[2])
deck2=deckreverse(deck[1])		
end

ncards1=nfields(deck1)
ncards2=nfields(deck2)

ncards=ncards1+ncards2


work=(deck1...,deck2...)


# where the cards are in the original stack
indexin1=collect(1:ncards1)
indexin2=ncards1.+collect(1:ncards2)


indexout=collect(1:ncards)
#now combine

if version=="out"
	
	 ncm=minimum([ncards1,ncards2])
	 for i=1:ncm
	 indexout[2*i-1]=indexin1[i]
	 indexout[2*i]=indexin2[i]
	 end
	 # then the rest of the cards
     
       for i= ncm+1:ncards1 
        indexout[ncm+i]=indexin1[i]
	   end
	   for i= ncm+1:ncards2
        indexout[ncm+i]=indexin2[i]
	   end
	 
	
end

if version=="in"
	
	 ncm=minimum([ncards1,ncards2])
	 for i=1:ncm
	 indexout[2*i-1]=indexin2[i]
	 indexout[2*i]=indexin1[i]
	 end
	 # then the rest of the cards
     
       for i= ncm+1:ncards1 
        indexout[ncm+i]=indexin1[i]
	   end
	   for i= ncm+1:ncards2
        indexout[ncm+i]=indexin2[i]
	   end
	
	
end

if starting=="top"
	return work[indexout]
 else
	return deckreverse(work[indexout])
end

end

