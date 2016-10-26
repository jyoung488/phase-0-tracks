  // define a function longestPhrase that takes input
  // call .length method on each element in array
  // output longest phrase using index 0

  function longestPhrase(array) {
    var phrase = ""

    for (var index = 0; index < array.length; index++) {
      if (array[index].length > phrase.length) {
        phrase = array[index];
      }
    }
    return phrase;
    }

  // define function taking 2 parameters of key-value pairs
  // compare the keys of each pair
  // if either key of pair 1 matches the key in pair 2, return true
  // if neither match, return false

  function matchKeys(pair1, pair2) {
    pair1Keys = [];
    pair2Keys = [];

    for (var key in pair1) {
      pair1Keys.push(key);
    }

    for (var key2 in pair2) {
      pair2Keys.push(key2);
      }

      if (pair1Keys[0] == pair2Keys[0]) {
        console.log("true");
      } else if (pair1Keys[1] == pair2Keys[1]) {
        console.log("true");
      } else {
        console.log("false");
      }
    }


  // define function that takes a parameter of string length
  // set parameter to create an array of phrases with that integer as the length
  // so array.length = integer
  // each word in the array should be a random length between 1-10 letters

  function randomString(length) {
      var randomText = "";
      var possible = "abcdefghijklmnopqrstuvwxyz";
      for(var i = 0; i < length; i++) {
          randomText += possible.charAt(Math.floor(Math.random() * possible.length));
      }
      return randomText;
  }

  function randomPhrases(num) {
    var phrases = [];

    for (var length = 0; length < num; length++) {
      phrases.push(randomString(Math.floor(Math.random() * 10) +1));
    }
    return phrases;
  }

  // test driver code

  console.log(longestPhrase(["hello there", "this is the longest phrase", "hi"]));
  matchKeys({name: "Steven", age: 54}, {name: "Tamir", age: 54});
  matchKeys({color: "orange", age: 20}, {hobby: "sleeping", food: "apples"});

  // loop 10 times
  // generates then prints array
  // feed array into longestPhrase function and print result

  for (i = 0; i < 10; i++) {
    var finalArray = randomPhrases(4);
    console.log(finalArray);
    var finalPhrase = longestPhrase(finalArray);
    console.log(finalPhrase);
  }


