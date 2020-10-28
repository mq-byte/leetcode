---
title: 二叉树的镜像
prev: /tree/maxDepth
next: /tree/seachTreeSum
tags:
  - 二叉树的镜像  
---

[[toc]]

### 题目描述
请完成一个函数，输入一个二叉树，该函数输出它的镜像。

::: tip eg:
例如输入：

         4
       /   \
      2     7
     / \   / \
    1   3 6   9
    
镜像输出：

         4
       /   \
      7     2
     / \   / \
    9   6 3   1

:::

### 解题思路

阿里躺平设计家一面问题，

### 代码描述

#### javascript
```js
/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {TreeNode}
 */
var mirrorTree = function(root) {
    if(!root) return root;
    var temp = root.left;
    root.left = root.right;
    root.right = temp;
    mirrorTree(root.left);
    mirrorTree(root.right);
    return root;
};
```

#### java
```java
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     int val;
 *     TreeNode left;
 *     TreeNode right;
 *     TreeNode(int x) { val = x; }
 * }
 */
class Solution {
    public TreeNode sortedArrayToBST(int[] nums) {

    }
}
```

