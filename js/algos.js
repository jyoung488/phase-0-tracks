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

longestPhrase(["hello there", "this is the longest phrase", "hi"]);