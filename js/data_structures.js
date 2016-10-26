var colors = ["blue", "green", "brown", "black"];
var horseNames = ["Black Beauty", "Ed", "Gus", "Randolph"];

colors.push("purple");
horseNames.push("Cinnamon");

var horses = {}

if (colors.length = horseNames.length) {
  for (var index = 0; index < horseNames.length; index++) {
    horses[horseNames[index]] = colors[index];
  }
}