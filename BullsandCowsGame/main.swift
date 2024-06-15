//
//  main.swift
//  BullsandCowsGame
//
//  Created by t2023-m0113 on 6/11/24.
//

//import Foundation
//
//func startGame() {
//    print("<게임을 시작합니다.>")
//    print("숫자를 입력하세요.")
//    
//    //while문으로 동작하게 만들어보기 (조건에 안 맞으면 계속 입력을 받기 위해)
//    //계속 입력을 받게 해서 동작하도록
//    
//    while (true) {
//        let input = readLine()
//        print("input: \(input)")
//        
//        if let userInput = input, let inputValue = Int(userInput) {
//            
//            if inputValue > 999 {
//                print("입력한 숫자가 잘못되었습니다 세자리 숫자로 해주세요")
//            } else {
//                print("올바른 숫자를 입력하셨습니다. 게임을 이어서 진행합니다.")
//            }
//        } else {
//            print("잘못된 입력입니다 숫자를 입력해주세요.")
//        } //일반적인 문자가 들어오면 그걸 Int로 변환할 없기 때문에
//        
//        
//    }
//    
//    //비교하는 동작을 메서드로...
//    
//    
//}
//
//startGame() // BaseballGame 인스턴스를 만들고 start 함수를 구현하기

    
var randomNumArrBase: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9]
randomNumArrBase.shuffle()
var randomNum = [randomNumArrBase[0], randomNumArrBase[1], randomNumArrBase[2]]
print(randomNum)
// 랜덤한 세 가지 배열 완성

//print(randomNum)

print("게임을 시작합니다. 세 자리 숫자를 입력하세요.")

while (true) {
var input = readLine()!
var userInput :[Int] = []
    
    if input.count != 3 {
        print("입력한 값이 잘못되었습니다 세자리 숫자로 해주세요.")
        continue
    }

    var thisAllDigit = true
    // 초기값 설정. 왜냐하면 일단 모든 값이 숫자라고 가정하기 위해서

    for char in input{// input에 담긴 모든 것을 char로 받아서 하나하나 검사함
        if !char.isNumber{ //char 안에 있는 값이 숫자가 아니라면
            thisAllDigit = false //발견 후 false로 재할당하고 for문 종료
            break
        }
    }

    //   char.isNumber
    //    isNumber는 chasracter타입의 속성으로 이 문자가 숫자인지 아닌지 확인한다.
    //    예를들어 char가 5면 true를 반환하고, char가 a면 false를 반환한다.

    if !thisAllDigit {
        print("입력한 값에 문자가 있습니다. 세 자리 숫자로 다시 입력하세요.")
    }
    // 그리고 넘어와서 !thisAllDigit 즉 true가 아닌 false임 위에서 input의 입력값을 하나하나 검사했으니 만약 false라는 것을 얻고 for문을 빠져나오면



    for x in input {
        if let num = Int(String(x)) {
            userInput.append(num)
            
            if userInput.contains(0){
                print("입력한 값에 0이 포함되어 있습니다. 다시 입력하세요.")
                break
            }
        }
        
        print(userInput)
    }

    var strike = 0
    var ball = 0

    for (index, number) in userInput.enumerated() {
        
        if number == randomNum[index] {
            strike += 1
        } else if userInput.contains(number){
            ball += 1
        }
        
        if strike == 3{
            break
        }
        print("\(strike)스트라이크, \(ball)볼 입니다.")
            
    }
    print("정답입니다!")
    
    
    //길이 확인하기
    
    
    

}

