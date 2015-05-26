
var mergeSort = function(array){

  var merge = function(leftSide, rightSide){
    var results = [];
    var l = 0;
    var r = 0;

    while ( r <= rightSide.length && l <= leftSide.length ) {
      if (r >= rightSide.length || ((l < leftSide.length) && (leftSide[l] < rightSide[l])) ){
        results.push(leftSide[l])
        l++
      }
      else {
        results.push(rightSide[r])
        r++
      }
    };
    return results
  }

  var spliter = function(arr){
    if(arr.lenght <= 1){
      return arr
    }
    var mid = (arr.lenght/2) - 1
    var leftSorted = spliter(arr.slice(0, mid))
    var rightSorted = spliter(arr.slice(mid+1, -1))
    return merge(leftSorted,rightSorted);
  }

  spliter(array);
}

mergeSort([4,3,2,1])



