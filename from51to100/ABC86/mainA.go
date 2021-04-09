package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	fmt.Printf("%s\n", [2]string{"Even","Odd"}[(a*b)%2])
}