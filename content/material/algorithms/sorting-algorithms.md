---
title: Sorting Algorithms
author: kleinen
layout: page
tags: ['sorting']
courses: ['info2']
---

..

| Algorithm      | Description                                                                  | Invariant                     | Plus                                 | O(n)                | Comparisions     | Swaps           | Stable     | adaptive | space                             |
|:---------------|:-----------------------------------------------------------------------------|:------------------------------|:-------------------------------------|:--------------------|:-----------------|:----------------|:-----------|:---------|:----------------------------------|
| Selection Sort | select smallest from rest, append to already sorted on left                  | a[1..i] in place              |                                      | n^2                 | n^2              | n               | not stable |          |                                   |
| Insertion Sort | take card from unsorted pile (right), insert it into sorted pile             | a[1..i] sorted                | adaptable, simple -> ok for small n  | n^2                 | n^2              | n^2             | stable     | yes      | O(1) extra                        |
| Shell Sort     | Insertion sort on every h-th element decreasing h down to 1                  | each h-array is sorted        | adaptable, still simple              | n^(3/2)             |                  |                 | stable     | yes      | O(1) extra                        |
| Bubble Sort    | go up through array, compare two and swap if not in right order (up to 1..n) | a[1..i] in place              |                                      | n^2                 | n^2              | n^2             | stable     | yes      | O(1) extra                        |
| Merge Sort     | split in two, sort rec, merge two parts.                                     |                               | predictable, works on linked lists   | n log n             | (0,5 to 1 )log n | (1 to 1,5)log n | stable     | no       | O(n) extra                        |
| Quick Sort     | go up through array, compare two and swap if not in right order (up to 1..n) | a[1..k-1] < a[k] <= a[k+1..n] | general purpose sort, but not stable | n log n (n^2 worst) |                  |                 | no         | no       | O(n·lg(n)) for some optimizatiosn |
| Bogo Sort      | randomly arrange array. If sorted, done.                                     | -                             |                                      | n!                  | n * n!           | n*n!            | not stable | no       | O(1)                              |
