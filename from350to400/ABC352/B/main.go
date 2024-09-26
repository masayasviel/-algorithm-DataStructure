package main

import (
	"fmt"
	"strconv"
	"strings"
)

func main() {
	var s, t string
	fmt.Scan(&s)
	fmt.Scan(&t)

	ans := make([]string, 0)
	sIdx := 0

	sSplit := strings.Split(s, "")
	tSplit := strings.Split(t, "")
	for i := 0; i < len(tSplit); i++ {
		if sSplit[sIdx] == tSplit[i] {
			ans = append(ans, strconv.Itoa(i+1))
			sIdx += 1
		}
	}

	fmt.Println(strings.Join(ans, " "))
}
