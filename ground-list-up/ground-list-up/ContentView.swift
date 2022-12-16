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
    var body: some View
    {
        MapView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
