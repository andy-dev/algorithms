var mergeSort = function(myArray){

  var merge = function(leftSide, rightSide){
    var results = []
    var l = 0
    var r = 0

    while (!( r >= rightSide.length && l >= leftSide.length )) {
      if (r >= rightSide.length || ((l < leftSide.length) && (leftSide[l] < rightSide[r])) ){
        results.push(leftSide[l])
        l++
      }
      else {
        results.push(rightSide[r])
        r++
      }
    };

    if(results.length === myArray.length){
      console.log(results)
    };
    return results
  };


  var spliter = function(arr){
    if(arr.length <= 1){
      return arr
    };

    var mid = (arr.length/2)
    var leftSorted = spliter(arr.slice(0, mid))

    var rightSorted = spliter(arr.slice(mid, arr.length))
    return merge(leftSorted,rightSorted);
  };

  spliter(myArray)
}

mergeSort([4,3,2,1])
mergeSort([6,7,5,3,5,6,7,8,9,0,0,6,5,])



