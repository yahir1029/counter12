//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0
    var body: some View {
       //This VStack maes the components display as a column
       //You can create varibles inSwiftUi as well
        
        VStack {
            
            Text("Click buttons below to change the counter")
            
            Text("\( counter)")
            HStack{
                Button("Increment",action:
                        Incrementcounter)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                
                Button("Decrement",action:
                        DecrementCounter)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
            }
        }
        .padding()
    }



func Incrementcounter(){
     counter += 1
    if counter == 51 {
        counter -= 1 }
  }
    func DecrementCounter(){
        counter -= 1
        
        if counter == -1 {
            counter += 1
        }
    }
}





#Preview {
    ContentView()
}




