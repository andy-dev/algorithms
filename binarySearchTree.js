//---------------------------------------
// Notes BST and Abstract Data Type ADT
//---------------------------------------

// 1) Binary Tree - max number of children of a node is two
// 2) All nodes (keys) are comparable (i.e if digits, compare digits or compare letters)
// 3) All the keys are UNIQUE
// 4) All elements to the left are smaller and all elements right larger than parent node

//--------------------------
// Example of a BST
//--------------------------

//     d
//   b   e
// a c

// all elements to the left of d are smaller than d
// all elements to right of d are bigger

// if we do an inorder traversal we would get them in order
//  1) we go all the way to the left we get a
//  2) we go left child parent right child


//--------------------------
// Using i as a node root
//--------------------------

// n nodes
// i @ node root, i-1 smaller, n-i larger
// t(n)= Σi=1, i=n  t(i-1) * t(n-i)
// t(0) = 1 (empty tree)
// t(1) = 1

// t(3)= t(0)t(2) + t(1)t(1) + t(2)t(0)=5
// t(2)= t(0)t(1) + t(1)t(1) = 2

// n=3 {a,b,c}

// a       a          b       c     c
//   c       b      a   c    b    a
//  b          c            a       b