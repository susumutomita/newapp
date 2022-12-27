//
//  ContentView.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    var body: some View
    {
        ZStack{
            VStack{
                Group{
                    Button(action:{}){
                        Text("y_start")
                    }
                    Button(action:{}){
                        Text("k_start")
                    }
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            ContentView().environment(\.locale,Locale(identifier: "ja"))
            ContentView().environment(\.locale,Locale(identifier: "en"))
        }

    }
}

