"""


"""

function deckmatch(deck1,deck2);

# for each card in deck1
# find it in deck2 and count how many subsequent cards are identical (modulo)
# put out maximum length and pairs of starting points. It more than one sequence, put out several pairs
# Assumes no duplicates are in each deck, but decks can have different sizes
# Presently restrictions: all cards different


nc1=nfields(deck1)

nc2=nfields(deck2)

maxlength=0
pointers=[]

i=1
iround=0
while iround==0

  card=deck1[i]
  
  j=find(x->x==card,deck2)[1]
  iden=0
  ip=i
  jp=j
  ipp=i
  jpp=j
  while deck1[ipp]==deck2[jpp]
   iden=iden+1
   ipp=ipp+1
   if ipp>nc1 
      ipp=1
	  iround=1
   end
   jpp=jpp+1
   if jpp>nc2 
      jpp=1
   end
   if iden==nc1
    iround=1
    break
   end
  end
  i=ipp
   
  if iden>4
    if pointers==[]
	 pointers=[(ip,jp)]
	 else
     pointers=[(pointers[]...),(ip,jp)]
	end
	 maxlength=maxlength+iden
  end
	
  
  
  
end



return maxlength,pointers


end

