
push!(LOAD_PATH,"C:/JMB/JLdeck","."); using JLdeck

nc=52

ifailed=0
ifailed2=0

for i=1:1000000

deck=tuple(collect(1:nc)...)
deck=deckcutc(deck,26;errormargin=20)
deck=deckcutc(deck,26;errormargin=20)
deck=deckcutc(deck,26;errormargin=20)


S1=deck[1]
S2=deck[2]
deck=(deck[2],deck[1],deck[3:nc]...)

deck=deckcutc(deck,26;errormargin=20)
deck=deckcutc(deck,26;errormargin=20)
deck=deckcutc(deck,26;errormargin=20)

piles=deckdeal(deck,2)

pile1=deckshuffle(piles[1])
pile2=deckshuffle(piles[2])

deck=deckfaro((pile1,pile2);version="out",starting="top")

deck=deckriffle(deckcut(deck,25))

pairs=deckpairsparity(deck)

#@show S1,S2,size(pairs)[1]


if size(pairs)[1]==2

scards=sort([pairs[1]...,pairs[2]...])

ic=0;for i=1:3; if scards[i+1]==scards[i]+1; ic=ic+1 end; end; #@show ic
if ic>1
ifailed2=ifailed2+1
end
                      else
ifailed=ifailed+1
end				


end	  
@show ifailed,ifailed2

