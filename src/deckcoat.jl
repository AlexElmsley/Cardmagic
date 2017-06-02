"""
Cuts a deck and complete the cut

deckout = deckcoat(deck,n);
count and transfer
"""

function deckcoat(deck,nin);


n=abs(nin)
if nin>0
  indexin=collect(1:nfields(deck));
   else
  indexin=collect(nfields(deck):-1:1);
end


if n>nfields(deck)
 n=nfields(deck)
end


indexout=[indexin[n+1:end]...,indexin[n:-1:1]...]
if nin>0
return deck[indexout]
     else
return deck[indexout[indexin]]
end
 

end

