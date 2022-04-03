//: [Previous](@previous)

import Foundation

/* input :
 2
 2
 2
 .#
 #a
 12
 15
 ###########....
 #.......c.###..
 ####......#.#..
 .#.########.#..
 ##...#..b#..#..
 #.a.#...#...###
 ####.#.#d###..#
 ......#...e#xx#
 .#....#########
 .#.x..#..#.....
 .######.c#.....
 ......####.....
*/

/*
 Case 1:
 a 1
 contested 0
 Case 2:
 a 1
 b 1
 c 2
 x 2
 contested 1
 */

// Solution

let input: [[String]] = [["2"],
                         ["2"],
                         ["2"],
                         [".","#"],
                         ["#","a"],
                         ["12"],
                         ["15"],
                         ["#","#","#","#","#","#","#","#","#","#","#",".",".",".","."],
                         ["#",".",".",".",".",".",".",".",".",".","c",".","#",".","."],
                         ["#","#","#","#",".",".",".",".",".",".","#",".","#",".","."],
                         [".","#",".","#","#","#","#","#","#","#","#",".","#",".","."],
                         ["#","#",".",".",".","#",".",".","b","#",".",".","#",".","."],
                         ["#",".","a",".","#",".",".",".","#",".",".",".","#","#","#"],
                         ["#","#","#","#",".","#",".","#","d","#","#","#",".",".","#"],
                         [".",".",".",".",".",".","#",".",".",".","e","#","x","x","#"],
                         [".","#",".",".",".",".","#","#","#","#","#","#","#","#","#"],
                         [".","#",".","x",".",".","#",".",".","#",".",".",".",".","."],
                         [".","#","#","#","#","#","#",".","c","#",".",".",".",".","."],
                         [".",".",".",".",".",".","#","#","#","#",".",".",".",".","."],
                        ]

let alphabet: [String] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]

var countFraction: Int = 0
var fraction: [Character]  = [Character]()

//print(input)


for (index, item) in input.enumerated() {
    for kolom in item {
        checkFraction(kolom: kolom)
    }
}

func checkFraction(kolom: String) {
    for (_,item) in alphabet.enumerated() {
        if kolom == item {
            fraction += kolom
        }
    }
}
var fractionSet: Set = Set(fraction)
print(fractionSet)



//: [Next](@next)
