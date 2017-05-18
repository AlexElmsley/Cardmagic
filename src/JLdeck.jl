module JLdeck

include("deckcut.jl");
include("deckcutc.jl");
include("deckfaro.jl");
include("deckriffle.jl");
include("deckdeal.jl");
include("deckshuffle.jl");
include("deckpairsparity.jl")
include("deckreverse.jl");
include("deckrotate.jl");
include("deckrandomize.jl");
include("deckcollect.jl");

export deckcut,deckcutc,deckfaro,deckreverse,deckriffle,deckdeal,deckshuffle,deckpairsparity,deckrotate,deckrandomize,deckcollect

end
