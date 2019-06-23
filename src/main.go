package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {

	var PORT string
	if PORT = os.Getenv("PORT"); PORT == "" {
		PORT = "5000"
	}

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprint(w, "Hello World! I'm a HTTP server with hot-reload features!")
	})

	http.ListenAndServe(":"+PORT, nil)
}
