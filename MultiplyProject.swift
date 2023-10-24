//
//  ContentView.swift
//  Multiply
//
//  Created by Bennett Stern on 9/15/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumberTextField = ""
    @State private var secondNumberTextField = ""
    @State private var calculation = 0
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("First Number")
                .font(.title)
            TextField("Enter a Number", text: $firstNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .padding()
            Text("X")
                .font(.title)
                .padding()
            Text("Second Number")
                .font(.title)
            TextField("Enter a Number", text: $secondNumberTextField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .multilineTextAlignment(.center)
                .frame(width: 200, height: 30, alignment: .center)
                .font(.body)
                .padding()
            
            Button ("Calculate") {
                if let firstNumber = Int(firstNumberTextField) {
                    if let secondNumber = Int(secondNumberTextField) {
                        calculation = firstNumber * secondNumber
                        if calculation == 64 {
                            imageName = "mouse"
                        }
                        else if calculation % 2 == 0 {
                            imageName = "bridge"
                        }
                        else if calculation % 2 == 1 {
                            imageName = "forest"
                        }
                            
                    }
                }
            }
                Text ("\(calculation)")
                    .frame(width: 200, height: 60, alignment: .center)
                    .font(.title)
                Spacer()
            
            Image(imageName)
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
                .aspectRatio(contentMode: .fit)
                
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            
        }
    }

