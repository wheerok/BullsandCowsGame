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
    let input = readLine()
    guard let input = input else {
        print ("입력한 숫자가 잘못되었습니다. 다시 시도하세요.")
        continue
    }
    
    if input.count != 3 {
        print("입력한 숫자가 잘못되었습니다 세자리 숫자로 해주세요.")
    } else if let inputValue = Int(input) {
        print("올바른 숫자를 입력하셨습니다. 게임을 시작하겠습니다!")
    } else {
        print("잘못된 입력입니다 숫자를 입력해주세요.")
        //일반적인 문자가 들어오면 그걸 Int로 변환할 없기 때문에
    }
    
    for x in input{
        
    }
    
    
    
    //길이 확인하기
    
    
    

}

