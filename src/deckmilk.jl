"""
Cuts a deck and complete the cut

deckout = deckmilk(deck,n=1;method="direct",where="Bottom");

"""

function deckmilk(deck,nin=1;method="Direct",where="Bottom");

#method direct: milk a couple and put back on deck "Bottom" or "Top"
#method pile: milke couples until n on a pile, then put pile back on "Bottom" or "Top"
  n=nin
  indexin=collect(1:nfields(deck));
  indexout=indexin
  if method=="Direct"
    for i=1:n
	 	if where=="Bottom"
		   indexout=[indexin[2:end-1]...,indexin[1],indexin[end]]  
		       else
		   indexout=[indexin[1],indexin[end],indexin[2:end-1]...]     
	    end
	    indexin=indexout
	end
  end
  
  if method=="Pile"
    ipile=[]
	if 2*n>nfields(deck) 
	   n=Int(floor(nfields(deck)/2))
	end
	for i=1:n
	    ipile=[indexin[i],indexin[end-i+1],ipile... ]
	end
	 	if where=="Bottom"
		   indexout=[indexin[n+1:end-n]...,ipile...]  
		       else
		   indexout=[ipile...,indexin[n+1:end-n]...]   
	    end
	
  end
  
  

return deck[indexout]

 

end

