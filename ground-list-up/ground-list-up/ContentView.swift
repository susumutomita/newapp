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
                        Text("camera")
                    }.padding()
                }
            }
            if isPicking{
                ImagePicker(image: $image, isPicking: $isPicking)
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
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
