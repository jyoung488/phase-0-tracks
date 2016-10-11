favorite_bands = {
  rock: ["The Offspring", ["Thrice", "Brand New", "Taking Back Sunday"], "Thursday"],
  indie: ["Rilo Kiley", "Death Cab for Cutie", "Tilly and the Wall"],
  solo_artists: [
    ["Jenny Lewis", "Gwen Stefani"],
     "Taylor Swift"],
}

p favorite_bands[:solo_artists][0][1]
p favorite_bands[:rock][1][0]
p favorite_bands[:indie].last
p favorite_bands[:solo_artists]
p favorite_bands[:indie][-1]