//
//  DetalleView.swift
//  PueblosJaen
//
//  Created by Pablo Peragón Garrido on 27/10/24.
//

import SwiftUI

struct DetalleView: View {
    var pueblo: ModelPueblo
    
    var body: some View {
        ScrollView {
            MapView(coordinate: pueblo.locationCoordinate)
                .frame(height: 300)
            
            EscudoView(image: pueblo.escudo)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text(pueblo.nombre)
                    .font(.title)
                    .bold()
                
                HStack {
                    Text(pueblo.comarca)
                    Spacer()
                    Text(pueblo.provincia)
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
                
                Text("Acerca de \(pueblo.nombre)")
                    .font(.title2)
                    .bold()
                Text(pueblo.descripcion)
            }
            .padding()
        }
    }
}


#Preview {
    DetalleView(pueblo: pueblos[1])
}
