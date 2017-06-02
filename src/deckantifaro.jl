



function deckantifaro(deck;collect="out");

if collect=="out"
deckout=(deck[1:2:end]...,deck[2:2:end]...)
end

if collect=="in"
deckout=(deck[2:2:end]...,deck[1:2:end]...)
end

if collect=="no"
deckout=((deck[1:2:end]...),(deck[2:2:end]...))
end


return deckout

end

