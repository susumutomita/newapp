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
        VStack{
            Text("\(number)")
            Button(action: {self.number += 1}){
                Text("カウント")
            }
            Image(systemName:"speaker.fill")
                .resizable().foregroundColor(.green).padding(.all).scaledToFit()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
