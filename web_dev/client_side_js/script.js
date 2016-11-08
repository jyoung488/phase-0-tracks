function addBorder(event) {
  event.target.style.border = "3px solid black";
}

var image = document.getElementsByTagName("img");
var firstImage = image[0];

firstImage.addEventListener ('click', addBorder);