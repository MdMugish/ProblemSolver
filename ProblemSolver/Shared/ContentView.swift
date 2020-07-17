//
//  ContentView.swift
//  Shared
//
//  Created by Mohd Yasir on 17/07/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var newObj = ArrayProblems()
 
    var body: some View {
        VStack {
      
            Text("Please enter 6 different number")
            
            
            HStack {
                
                ForEach(Range(0...5)) { value in
                    ZStack{
//                        Color.blue.frame(width: nil, height: 50, alignment: .center)
                        TextField("Value", text: $newObj.allProblems[0].input[value]).keyboardType(.numberPad)
                    
                            
                            .multilineTextAlignment(.center)
                            
                   
                    }
                }
            }.padding(.all, 16)
        
            
            Text("Sorted Array : ")
            HStack{
                ForEach(newObj.allProblems[0].answer, id: \.self) { value in
                    Spacer()
                    Text("\(value)")
                    Spacer()
                }
            }.padding(.all, 16)
            
            
            Button(action: {
                newObj.solvedProblem(newObj.allProblems[0].noOfProblem, value: newObj.allProblems[0].input.map{ Int($0)!})
                
            }) {
                Text("Calculate")
            }
            
            Spacer()
        }.padding(.top, 16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


