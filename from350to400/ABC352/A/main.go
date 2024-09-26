package main

import (
	"fmt"
)

func main() {
	var n, x, y, z int16
	fmt.Scan(&n, &x, &y, &z)
	if x > y {
		if x >= z && z >= y {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	} else {
		if y >= z && z >= x {
			fmt.Println("Yes")
		} else {
			fmt.Println("No")
		}
	}
}
