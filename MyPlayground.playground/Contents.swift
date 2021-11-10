import UIKit

//closure bir fonksiyonun parametresi olan bir fonksiyon
func filterWithPredicateClosure(closure: (Int) -> Bool, numbers: [Int]) -> [Int]{
    var filteredSetofNumbers = [Int]()
    for num in numbers {
//  performing some condition check here
//        closure true dönerse
        if closure(num){
            filteredSetofNumbers.append(num)
        }
    }
    return filteredSetofNumbers
}


let filteredList = filterWithPredicateClosure(closure: { (num) in
    //yukarıdaki fonksiyonun parametresi olan closure'u tanımlıyoruz
    return num < 20
}, numbers: [1,2,3,4,5,10])
print(filteredList)



//Böyle de olur
func closureFunction(num: Int) -> Bool {
    return num > 4
}

let filteredListSecond = filterWithPredicateClosure(closure: closureFunction, numbers: [1,2,3,4,5,10])
print("-----")
print(filteredListSecond)
