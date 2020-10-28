---
title: 二叉搜索树区域和
prev: /tree/mirrorTree
next: /
tags:
  - 二叉搜索树区域和  
---

[[toc]]

### 题目描述
给定二叉搜索树的根结点 root，返回 L 和 R（含）之间的所有结点的值的和。

二叉搜索树保证具有唯一的值。


::: tip eg:
示例 1：

输入：root = [10,5,15,3,7,null,18], L = 7, R = 15
输出：32

示例 2：

输入：root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
输出：23

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
 * @param {number} L
 * @param {number} R
 * @return {number}
 */
var rangeSumBST = function(root, L, R) {
    if(!root) return 0;
    var sum = 0;
    if(root.val >= L && root.val <= R){
        sum = root.val;
    }

    return sum + rangeSumBST(root.left, L, R) + rangeSumBST(root.right, L, R)
};
```

#### js更好的效率
```js
var rangeSumBST = function(root, L, R) {
    if(!root) return 0;
    if(root.val > R){
        return rangeSumBST(root.left, L, R)
    }else{
        if(root.val < L){
            return rangeSumBST(root.right, L, R)
        }else{
            return rangeSumBST(root.left, L, R) + root.val + rangeSumBST(root.right, L, R)
        }
    }
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

