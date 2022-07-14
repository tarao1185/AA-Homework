const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
  });

  
  reader.question("Would you like some tea?", function (answer1) {
    console.log(`${answer1}!`);
  

  reader.question("Would you like some biscuits?", function (answer2) {
    console.log(`So you ${answer1} want tea and you ${answer2} want coffee.`);});
  });
  
  
