module JLdeck

include("deckcut.jl");
include("deckcutc.jl");
include("deckfaro.jl");
include("deckantifaro.jl");
include("deckriffle.jl");
include("deckdeal.jl");
include("deckshuffle.jl");
include("deckpairsparity.jl")
include("deckreverse.jl");
include("deckrotate.jl");
include("deckrandomize.jl");
include("deckcollect.jl");
include("deckdownunder.jl");
include("deckslipcutc.jl");
include("deckcoat.jl")
include("deckmilk.jl")
include("deckmonge.jl")
include("deckinsert.jl")
include("deckorder.jl")
include("deckmatch.jl")

# To do:

# Face-up face-down
# General find function
# deckcreate (numbers, letters,fullcards)
 



export deckcut,deckcutc,deckfaro,deckreverse,deckriffle,deckdeal,deckshuffle,deckpairsparity,deckrotate,deckrandomize,deckcollect,deckdownunder,deckslipcutc,
 deckcoat,deckmilk,deckmonge,deckinsert,deckantifaro,deckorder,deckmatch

end
