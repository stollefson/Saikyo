//credit to snipplr user 'powerserve'

var welcomeQuote = new Array()
 
welcomeQuote[0] = '"YAHOO!"';
welcomeQuote[1] = '"Where its ALWAYS super-dynamic cooking time"';
welcomeQuote[2] = '"I hope you&#39;re ready for eating!"';
//welcomeQuote[3] = '"*scratches head*"';
//welcomeQuote[4] = '"Think, think, think..."';
//welcomeQuote[5] = '"Too much to do!"';
//welcomeQuote[6] = '"I sure did."';
//welcomeQuote[7] = '"Okay, who is John G, and why is his named tattooed on my chest?"';
//welcomeQuote[8] = '"Memories...like the corners of my mind..."';
//welcomeQuote[9] = '"Hey, remember that time you signed up for this website? That was a great idea, right?"';
 
var j = 0
var p = welcomeQuote.length;
var preBuffer = new Array()
for (i = 0; i < p; i++){
preBuffer[i] = new Array()
preBuffer[i].src = welcomeQuote[i]
}
var whichText = Math.round(Math.random()*(p-1));
function newQuote(){

document.write(welcomeQuote[whichText]);
}
