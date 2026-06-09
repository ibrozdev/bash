#!/bin/bash

#Write a program that prompts for two numbers. Print the sum, difference, product, and quotient of those numbers as shown in the example output:

read -p "What is the first number ? "  X;
read -p "What is the second number ? " Y;

echo -e "
	$X + $Y = $((X+Y))\n
	$X - $y = $((X-Y))\n
	$X * $Y = $((X*Y))\n
	$X / $Y = $((X/Y))\n


"
