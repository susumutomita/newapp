//
//  ContentView.swift
//  ground-list-up
//
//  Created by susumu tomita on 2022/11/11.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable{
    func makeUIView(context: Context) -> MKMapView {
        return MKMapView()
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
    
}

struct ContentView: View {
    var cards = ["かばん":"bag",
    "自動車"
                 :"car","誕生日":"birthday"]
    @State var japanese = "かばん"
    @State var isJapanese = true
    var body: some View
    {
        ZStack {
            Color(red: 0.97, green: 0.96, blue:0.56).edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Image("cards")
                        .resizable()
                        .frame(width: 300.0,height:133.0)
                        .shadow(radius: 3)
                        .rotation3DEffect(.degrees(isJapanese ? 0 : 180), axis: (x: 0, y: 1, z: 0))
                        .animation(.easeInOut)
                        .onTapGesture {
                            self.isJapanese.toggle()
                        }
                    Text(isJapanese ? japanese : cards[japanese]!).font(.largeTitle)
                }
                HStack
                {
                    Group{
                        Button(action:{
                            self.isJapanese.toggle()
                        }){
                            Image(systemName: "arrow.2.circlepath")
                            Text("裏返す")
                        }
                        Button(action: {
                            self.isJapanese = true
                            self.japanese = self.cards.randomElement()!.key
                        }){
                            Image(systemName: "forward.fill")
                            Text("次へ")
                        }
                    }.padding()
                        .foregroundColor(.white)
                        .background(Color(red: 0.1, green: 0.3, blue: 0.4))
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
