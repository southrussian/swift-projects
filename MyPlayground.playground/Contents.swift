let array = [1, 5, 8, 9, 11, 12]
//for i in array {
//    print(i * 3)
//}

func multiplythree(array: [Int]) -> [Int] {
    let mappedArr = array.map { $0 * 3 }
    print(mappedArr)
    return mappedArr
}

multiplythree(array: array)
