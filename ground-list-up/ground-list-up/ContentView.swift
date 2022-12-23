//
//  ContentView.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/11/11.
//

import SwiftUI

struct ContentView: View {
    @State var image:Image?
    @State var isPicking = false
    var body: some View
    {
        ZStack{
            VStack{
                VStack{
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFit()
                    Spacer()
                }
                HStack{
                    Spacer()
                    Button(action: {
                        self.isPicking=true
                    }){
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking{
                ImagePicker()
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
