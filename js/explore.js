// takes string as a parameter
// output a string that's the reverse
// for each index of letter, minus index variable and output that letter

function reverseString(string) {
  index = 0
  for (var index = 0; index < string.length; index++) {
    console.log(string[index]);
  }
}

  reverseString("hello");