package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strings"
	"time"
)

func main() {
	MAX_LENGTH := 24
	MIN_LENGTH := 16
	rand.Seed(time.Now().UnixNano())
	file, err := os.Open("/usr/share/dict/words")
	if err != nil {
		fmt.Println(err)
		return
	}
	defer file.Close()

	scanner := bufio.NewScanner(file)
	var dict []string
	for scanner.Scan() {
		dict = append(dict, scanner.Text())
	}

	var words []string
	for {
		words = []string{}
		for i := 0; i < 4; i++ {
			words = append(words, dict[rand.Intn(len(dict))])
		}
		if len(strings.Join(words, ";")) >= MIN_LENGTH && len(strings.Join(words, ";")) <= MAX_LENGTH {
			break
		}

	}

	fmt.Println(strings.Join(words, ";"))
}
