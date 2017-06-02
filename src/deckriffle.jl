"""




"""

function deckriffle(deck,blocksize=3);


deck1=deckreverse(deck[2])
deck2=deckreverse(deck[1])		


ncards1=nfields(deck1)
ncards2=nfields(deck2)

ncards=ncards1+ncards2


work=(deck1...,deck2...)


# where the cards are in the original stack
indexin1=collect(1:ncards1)
indexin2=ncards1.+collect(1:ncards2)


indexout=collect(1:ncards)
#now combine

ntaken=0

# Take cards from either packet until one is empty,
# Does not take into account table effects (small verses large packet ...)

nc1left=ncards1
nc2left=ncards2
ntaken=0
	while ntaken<ncards
	
		whichdeck=mod(rand(Int,1)[1],2)
		howmany=mod(rand(Int,1)[1],blocksize)
#@show whichdeck howmany, nc1left,nc2left
		if whichdeck==0
			howmany=minimum([howmany,nc2left])
	        indexout[ntaken+1:ntaken+howmany]=indexin2[ncards2-nc2left+1:ncards2-nc2left+howmany]
			nc2left=nc2left-howmany
                  else
			howmany=minimum([howmany,nc1left])
	        indexout[ntaken+1:ntaken+howmany]=indexin1[ncards1-nc1left+1:ncards1-nc1left+howmany]
			nc1left=nc1left-howmany
      
		end				  
	    ntaken=ntaken+howmany
    end
	
	return deckreverse(work[indexout])

	
end

