---
title: Vortex Dice And Modulus
author: SRWeaver
tags: vortex modulus inputgeneration
---
This is a method of generating input vectors without using a Baysian algorithm. But it can also be used to generate an input vector for a seed to choose between different grammar generation functions in baysian algorithms.

~~~ruby
dice = [10.50, 10.75, 21.25,
        21.50, 21.75, 82.25,
        82.50, 82.75, 73.25,
        73.50, 73.75, 54.25,
        54.50, 54.75, 10.50]

modulus = 90

input = dice.sample.to_i % modulus
~~~

The primary benefit here is that you can use vortex arithmetic to get a high number, and the modulus automatically switches to a safer lower number if the number gets beyond a certain threshold.
