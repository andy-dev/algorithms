var mergeSort = function(array){

  var merge = function(leftSide, rightSide){
    var results = [];
    var l = 0;
    var r = 0;

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
    console.log(results)
    return results
  }

  var spliter = function(arr){
    if(arr.length <= 1){
      return arr
    };

    var mid = (arr.length/2)
    var leftSorted = spliter(arr.slice(0, mid));

    var rightSorted = spliter(arr.slice(mid, arr.length));
    return merge(leftSorted,rightSorted);
  };

  spliter(array);
}

mergeSort([4,3,2,1])



