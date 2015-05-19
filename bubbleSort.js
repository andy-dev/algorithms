var mySorting = function bubbleSort(array){
  var arrayLength = array.length;
  var i = 0;

  for (i;i<arrayLength;i++) {
    var n = 0;
    for (n; n<arrayLength; n++) {
      if (array[n+1] < array[n]) {
        var switchedNumber = array[n];
        array[n] = array[n+1];
        array[n+1] = switchedNumber;
      };
    };
  }
  return array;
}

var myArray = [1,3,5,2,6,3,6]
console.log(mySorting(myArray))


