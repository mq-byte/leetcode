---
title: 二叉搜索树
prev: /tree/
next: /tree/maxDepth
tags:
  - 二叉搜索树  
---

[[toc]]

### 题目描述
给定一个有序整数数组，元素各不相同且按升序排列，编写一个算法，创建一棵高度最小的二叉搜索树。

::: tip eg:
给定有序数组: [-10,-3,0,5,9],

一个可能的答案是：[0,-3,9,-10,null,5]，它可以表示下面这个高度平衡二叉搜索树：

          0 
         / \ 
       -3   9 
       /   / 
     -10  5 

:::

### 解题思路

核心就是一个思想，将数组中 中间值作为二叉树父节点，中间值左边区域生成满足题目的左子树，右边同理

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
 * @param {number[]} nums
 * @return {TreeNode}
 */
var sortedArrayToBST = function(nums) {
    if(nums.length === 0){
        return null;
    }

    var atb = function(i,j){
        if(i > j){
            return null;
        }
        var m = Math.floor((i + j)/2);
        var t = new TreeNode(nums[m]);
        t.left = atb(i,m - 1);
        t.right = atb(m + 1, j);
        return t;
    }
    return atb(0,nums.length - 1);
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

