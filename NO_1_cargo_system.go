package main

import "fmt"

var maxWeight int = 20

var itemInCargo []string

func cargo_system(itemCode string, tipe string, width int, height int, length int, weight int, temperature int) (string, []string) {

	strReturn := "REJECT"
	if tipe == "L" || tipe == "S" || tipe == "l" || tipe == "s" {
		if tipe == "L" || tipe == "l" {
			if temperature >= 20 && temperature <= 30 {
				if weight <= maxWeight {
					strReturn = "PASS"
				} else {
					strReturn = "REJECT"
				}
			} else {
				strReturn = "REJECT"
			}

		}
		if tipe == "S" || tipe == "s" {
			if width <= 10 && height <= 10 && length <= 10 {
				if weight <= maxWeight {
					strReturn = "PASS"
				} else {
					strReturn = "REJECT"
				}
			} else {
				strReturn = "REJECT"
			}

		}
	} else {
		strReturn = "REJECT"
	}

	if strReturn == "PASS" {
		maxWeight = maxWeight - weight
		itemInCargo = append(itemInCargo, itemCode)
	}

	return strReturn, itemInCargo

}

func main() {
	fmt.Println(cargo_system("item001", "S", 5, 8, 2, 5, 25))
	fmt.Println(cargo_system("item002", "L", 10, 10, 10, 6, 25))
	fmt.Println(cargo_system("item003", "L", 10, 10, 10, 6, 19))
	fmt.Println(cargo_system("item004", "S", 1, 15, 2, 1, 25))
	fmt.Println(cargo_system("item005", "S", 1, 1, 10, 2, 25))
	fmt.Println(cargo_system("item006", "L", 5, 8, 2, 10, 25))
}
