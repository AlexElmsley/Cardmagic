"""


"""

function deckmonge(deck);


index=collect(1:nfields(deck))



N=nfields(deck);
ND=Int(floor(N/2))
if mod(N,2)==0
 NS=2*ND
 NF=2*ND-1
           else
 NS=2*ND
 NF=2*ND+1
end


i1=collect(1:2:NF)
i2=collect(NS:-2:2)
#@show i2,i1
index=[i2[:]...,i1[:]...]
#@show index

deckout=deck[index]






return deckout

end

