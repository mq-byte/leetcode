---
title: 二叉搜索树
prev: /tree/
next: /tree/maxDepth
tags:
  - 二叉搜索树  
---

[[toc]]

### 题目描述
输入一棵二叉树的根节点，判断该树是不是平衡二叉树。如果某二叉树中任意节点的左右子树的深度相差不超过1，那么它就是一棵平衡二叉树。

### 解题思路

核心思想利用后序遍历，判断是否是平衡二叉树

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
 * @return {boolean}
 */
var isBalanced = function(root) {
    var h = function(r){
        if(!r) return 0;
        var lh = h(r.left);
        var rh = h(r.right);
        if(lh === -1 || rh === -1 || Math.abs(lh - rh) > 1){
            return -1;
        }
        return Math.max(lh,rh) + 1;
    }
    return h(root) >= 0;
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

