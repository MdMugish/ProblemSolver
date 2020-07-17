//
//  ProblemsOnArray.swift
//  ProblemSolver
//
//  Created by Mohd Yasir on 17/07/20.
//

import Foundation
import Combine
import SwiftUI

class ArrayProblems : ObservableObject{
    

    @Published var numberOfProblems = 9
    @Published var inputArray : [String] = []
    
    
    
    
    @Published var allProblems : [Problems] = [
    
        
            Problems(noOfProblem: 0, question: "How to sort the array using bubble sort", description: nil, example: nil, answer:[], input: [String](repeating: "", count: 6))
        
     
    
    ]

   
    func handlerForQuestion(state : Bool, numberOfQuestion : Int, solution: Any){
        
        if state{
            print("Qustion number \(numberOfQuestion) Problem Solved. Solution is \(solution)")
            self.allProblems[numberOfQuestion].answer = solution as! [Int]
            print("Answer is : " , self.allProblems[numberOfQuestion].answer)
           
        }
        
    }
    
//     var handlerForQuestions : (Bool, Int, Any) -> () = { state, numberOfQuestion, solution in
//
//        if state{
//            print("Qustion number \(numberOfQuestion) Problem Solved. Solution is \(solution)")
////            sortedArray = solution //MARK: Why i am not able to access the variable
//        }
//    }
//
  
    
    func solvedProblem(_ count : Int, value : [Int]){
        switch count {
        case 0:
            solvingProblemNumberZero(value, handlerForQuestion)
            
//        case 2:

        default:
            print("Solution for this problem is not available")
        }
    }
    
    
    
    var solvingProblemNumberZero : ([Int], (Bool, Int, Any) -> ()) -> () = { problem, completionHandler in
        
        var value = problem
        print(value)
        
        for i in 0..<value.count{
            for j in 0..<value.count-1{
                if value[j+1] < value[j]{
                    value.swapAt(j, j+1)
                }
            }
            print("Sorting the value")
        }
        
        completionHandler(true,0,value)
    
        
    }
    

    
    
}
