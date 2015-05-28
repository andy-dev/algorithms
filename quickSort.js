var myQuick = function quickSort(array){
  if (array.length <= 1) {
    return array;
  }

  var leftSide = []
  var rightSide = []
  var pivot = array[0]

  for (var i = 1; i < array.length; i++) {
    if (array[i] < pivot) {
      leftSide.push(array[i]);
    } else {
      rightSide.push(array[i]);
    }
  }
  return myQuick(leftSide).concat(pivot, myQuick(rightSide))
}

myArray = [6,5,4,3,2,1]
console.log(myQuick(myArray))