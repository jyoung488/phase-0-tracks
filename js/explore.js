// takes string as a parameter
// output a string that's the reverse
// for each index of letter, minus index variable and output that letter

function reverseString(string) {
  var newString = "";

  for (var index = string.length - 1; index >= 0; index--) {
    newString += string[index];
  }
  console.log(newString);
}

  reverseString("hello");

  var backwardsWord = reverseString("computer");