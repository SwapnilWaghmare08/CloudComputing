#!/bin/bash
read -p "Enter a phrase you want to find: " w
echo "Entered word : $w"
echo -e "\nConsidering cases : grep $w"
	grep $w file1.txt file2.txt file3.txt
echo "============================================="
echo -e "\nNOT considering cases : grep -i $w"
	grep -i $w file1.txt file2.txt file3.txt 
echo "=============================================="
echo -e "\nCOUNT considering cases : grep -c $w"
	grep -c $w file1.txt file2.txt file3.txt
echo "=============================================="
echo -e "\nCOUNT ignoring cases: grep -ci $w"
	grep -ci $w file{1..3}.txt
echo "============================================="
echo -e "\nTotal COUNT case sensitive in all files"
	grep $w file{1..3}.txt | wc -l
echo "============================================="
echo -e "\nTotal COUNT ignoring cases in all files"
	grep -i $w file{1..3}.txt |wc -l
