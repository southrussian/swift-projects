//
//  ContentView.swift
//  MapApp
//
//  Created by Danil Peregorodiev on 05.02.2022.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 47.13,
            longitude: 39.43),
        span: MKCoordinateSpan(
            latitudeDelta: 7,
            longitudeDelta: 7
        )
    )
    
    var body: some View {
        NavigationView {
            VStack {
                Map(coordinateRegion: $region)
                
                Button(action: {
                        withAnimation {
                            region.span = MKCoordinateSpan(
                            latitudeDelta: 5, longitudeDelta: 5)
                }
                    
                }, label: {
                    Text("Zoom in!")
                        .bold()
                        .frame(width: 250, height: 50, alignment: .center)
                        .background(Color.mint)
                        .cornerRadius(5)
                        .foregroundColor(Color.black)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
