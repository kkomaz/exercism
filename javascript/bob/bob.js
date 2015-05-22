var Bob = function() {};

var isYelling = function(input){
  return input === input.toUpperCase() && input.toLowerCase() !== input;
};

var isQuestion = function(input){
  return input.substr(-1) == '?';
};

Bob.prototype.hey = function(input) {
  if (input === '' || input === '   '){
    return "Fine. Be that way!";
  } else if (isYelling(input)){
    return "Whoa, chill out!";
  } else if (isQuestion(input)){
    return "Sure.";
  } else {
    return "Whatever.";
  }
};

module.exports = Bob;
