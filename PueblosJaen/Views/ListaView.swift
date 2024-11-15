//
//  ListaView.swift
//  PueblosJaen
//
//  Created by Pablo Peragón Garrido on 27/10/24.
//

import SwiftUI

struct ListaView: View {
    @State private var showFavoriteOnly = false
    
    var filteredPueblos: [ModelPueblo] {
        pueblos.filter { pueblo in
            (!showFavoriteOnly || pueblo.isVisit)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Pueblos visitados")
                }
                     
                ForEach(filteredPueblos) { pueblo in
                    NavigationLink {
                        DetalleView(pueblo: pueblo)
                    } label: {
                        FilaView(pueblo: pueblo)
                    }
                }
            }
            .animation(.default, value: filteredPueblos)
            .navigationTitle("Pueblos de Jaén")
        } detail: {
            Text("Selecciona un pueblo")
        }
    }
}

#Preview {
    ListaView()
}
