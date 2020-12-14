package utils

import "github.com/axgle/mahonia"

func DecoderConvert(name string, body string) string {
	return mahonia.NewDecoder(name).ConvertString(body)
}