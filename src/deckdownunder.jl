"""


"""

function deckdownunder(deck;next="Down");


index=collect(1:nfields(deck))



N=nfields(deck);

while N > 0


C=index[1];

index[1:N-1]=index[2:N];

index[N]=C;


if next=="Down"
next="Under";
N=N-1;
else
N=N;
next="Down";
end

end




deckout=deck[index]






return deckout

end

