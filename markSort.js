var arr = [2,4,6]
var arrMax = Math.max.apply(Math, arr)
var arrMin = Math.min.apply(Math, arr)
var diff = arrMax - arrMin + 1
var markings = []

for(i = 0; i < diff; i++){
  markings.push(0);
}

for(i = 0; i < arr.length; i++){
  markings[arr[i] - arrMin] = 1;
}

var result = [];

var sortedResult = (function (){
  for(i = 0; i <= markings.length; i++){
    if(markings[i] === 1){
      result.push(i + arrMin)
    }
  }
  return result
})();

console.log(result)
