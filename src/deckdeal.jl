"""


"""

function deckdeal(deck,npiles=2);

ncards=nfields(deck)

# indexin=collect(1:ncards)

# For the momement two piles 
#return (deckreverse((deck[1:2:ncards]...)),deckreverse((deck[2:2:ncards]...)))

# Now in general
return ((deckreverse((deck[i:npiles:ncards]...)) for i=1:npiles)...)

end

