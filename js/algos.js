// define a function longestPhrase
// takes input of an array of phrases
// call .length method on each phrase listed
// list phrases from longest to shortest
// output longest phrase using index 0

function longestPhrase(array) {
  var phrase = ""

  for (var index = 0; index < array.length; index++) {
    if (array[index].length > phrase.length) {
      phrase = array[index];
    }
  }
    console.log(phrase);
  }

  // define function taking 2 parameters of key-value pairs
  // compare the keys of each pair
  // if either key of pair 1 matches the key in pair 2, return true
  // if neither match, return false

  function matchKeys(pair1, pair2) {
    
  }


longestPhrase(["hello there", "this is the longest phrase", "hi"]);

