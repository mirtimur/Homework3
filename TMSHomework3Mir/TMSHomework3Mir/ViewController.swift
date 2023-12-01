import UIKit

class ViewController: UIViewController {
    
    var num: UInt8 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testFunctions()
    }
    
    func testFunctions() {
        print(sumOfFourDigits(1234))
        
        universal(10, 2)
        universal(10.0, 2.0)
        universal(2, 3, 5)
        universal(15, 3.0)
        stringComparison("авб", "ввш")
        degreeExpansion(2, 4)
        recursion(num)
        //xD()
    }
    
    // MARK: - Универсальные функции
    func universal(_ a: Int, _ b: Int) {
        print (a / b)
    }
    
    func universal(_ a: Double, _ b: Double ) {
        print (a * b)
    }
    
    func universal(_ a: Int, _ b: Int, _ c: Int) {
        print (a + b + c)
    }
    
    func universal(_ a: Int, _ b: Double) {
        print(a - Int(b))
    }
    
    //MARK: - Сложение четырехзначного числа
    func sumOfFourDigits(_ a: Int) -> Int {
        var sum = 0
        var a = a
        
        while a > 0 {
            sum += a % 10
            a /= 10
        }
        return sum
    }
    
    //MARK: - Сравнение строк
    func stringComparison(_ a: String, _ b: String) {
        if a > b {
            print("Первая строка больше")
        } else {
            print("Вторая строка больше")
        }
    }
    
    //MARK: - Циклический вызов функции №1
    func recursion(_ a: UInt8) -> UInt8 {
        num += 100
        return recursion(num)
    }
    
    //MARK: - Ломаем функцию №2 xD
//    func xD() {
//        fatalError()
//    }
    
    //MARK: - Функция возведения в степень
    func degreeExpansion(_ a: Decimal, _ b: Int) {
        let pow = pow(a, b)
        print(pow)
    }
}
