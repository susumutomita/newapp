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
        VStack{
            Text(isJapanese ? japanese : cards[japanese]!)
            HStack
            {
                Button(action:{
                    self.isJapanese.toggle()
                }){
                Text("裏返す")
                }
                Button(action: {
                    self.isJapanese = true
                    self.japanese = self.cards.randomElement()!.key
                }){
                    Text("次へ")
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
