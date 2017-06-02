"""
Cuts a deck

deckout = deckcut(deck,where=[]; errormargin=0);

Cuts the deck at random of no paramter is provided. If a parameter is provided it
is cut at the position defined otherwise a random position.

If errormargin is provided, the cut is done around the specified value

Everything is modulo (so if errormargin is 10 and a cut at 3 is demanded it might be that the cut it at the bottom)

Maybe to change ...

# Input:


"""
# to do: make sure no empty packets are found

function deckcut(deck,where=[]; errormargin=0,npiles=2);

ncards=nfields(deck)

if npiles>ncards
	warn("There is no way to make as much piles")
	npiles=ncards
	where=collect(1:ncards-1)
end


ip=collect(1:npiles+1)
ip[1]=0
ip[npiles+1]=ncards

indexin=collect(1:ncards)

tocontinue=1

while tocontinue==1

if where==[]
	where=rand(Int,npiles-1)
end

#@show where,randn(npiles-1)
where=where+convert(Array{Int,1},ceil(errormargin*randn(npiles-1)))
where=mod(where,ncards)
where=sort(where)
ip[2:end-1]=where[:]

#@show size(union(where))[1],size(where)[1]
# Add a test here; if two successive where itentical retry again by putting where=[]

if size(union(ip))[1]==size(ip)[1]
   tocontinue=0
     else
   where=[]
end
   
   
end




return (((deck[ip[i]+1:ip[i+1]]...) for i=1:npiles)...)

end

