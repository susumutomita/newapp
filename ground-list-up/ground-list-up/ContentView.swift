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
        VStack(){
            Image("Counter")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(number)")
            Button(action: {() -> Void in self.number += 1 }, label:{() -> Text in Text("カウント")})
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
