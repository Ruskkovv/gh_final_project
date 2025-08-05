#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "Simple Interest Calculator"
echo "========================="

# Get input from user
echo "Enter the principal amount:"
read principal

echo "Enter the rate of interest (%):"
read rate

echo "Enter the time period (years):"
read time

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc -l)

# Display result
echo "========================="
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $(echo "scale=2; $principal + $simple_interest" | bc -l)"
