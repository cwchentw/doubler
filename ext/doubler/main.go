package main

import (
	"C"
)

//export DoubleInt
func DoubleInt(x int) int {
	return x * 2
}

//export DoubleFloat
func DoubleFloat(x float64) float64 {
	return x * 2
}

//export DoubleString
func DoubleString(x *C.char) *C.char {
	str := C.GoString(x)
	return C.CString(str + str)
}

func main() {}
