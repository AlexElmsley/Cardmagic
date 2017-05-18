"""
Rotate the deck; can also be used to initialize the orientation component

deckout = deckrotate(deck);




"""


function deckrotate(deck);

deckout=[]
if !isa(deck[1],Tuple)
  deckout=(((deck[i]...,"Up") for i=1:nfields(deck))...)
  
    else
  deckout=(((deck[i][1]...,(deck[i][2] == "Up" ? ("Down") : ("Up"))) for i=1:nfields(deck))...)	
	
  
end

return deckout


end

