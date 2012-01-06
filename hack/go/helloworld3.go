package main

import {
   "./file"
   "fmt"
   "os"
}

func main() {
   hello := []byte("hello, world\n")
   file.Stdout.Write(hello)
   f, err := file.Open("/does/not/exist")
   if f == nil {
      fmt.Printf("can't open file; err=%s\n", err.String())
   }
}
