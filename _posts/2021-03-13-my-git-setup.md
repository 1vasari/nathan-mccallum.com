---
layout: post
title: My Git Setup
author: Nathan McCallum
tags: programming
date: 2021-03-13
preview: Git is a tool programmers use to track changes to text files over time. Here's how I have it set it up.
permalink: /git/
---

Git is a tool programmers use to track changes to text files over time which can be configured using a special `.gitconfig` file.
The following is my gitconfig.

```
[alias]
  gas = !git add -A && git status
  cam = commit -am
  po = push origin
  s = status
  fs = !git fetch && git status

[pull]
  ff = only

[init]
  defaultBranch = main

[user]
  name = Nathan McCallum
  email = hey@nathan-mccallum.com
```
