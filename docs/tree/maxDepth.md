---
title: 计算最大深度
prev: /
next: /
tags:
  - 计算最大深度  
---

[[toc]]

## 题目描述
输入一棵二叉树的根节点，求该树的深度。从根节点到叶节点依次经过的节点（含根、叶节点）形成树的一条路径，最长路径的长度为树的深度。

::: tip eg:
例如：

给定二叉树 [3,9,20,null,null,15,7]，

        3
       / \
      9  20
        /  \
       15   7
:::

## 解题思路

这是我面试美团三面的一道算法题，题目不难，只要是科班出身基本都是能够解出来的。

## 代码描述

### javascript
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
 * @return {number}
 */
var maxDepth = function(root) {
    if(!root){
        return 0;
    }else {
        return Math.max(maxDepth(root.left),maxDepth(root.right))+1;
    }
};
```

### java
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

