//
//  FilaView.swift
//  PueblosJaen
//
//  Created by Pablo Peragón Garrido on 27/10/24.
//

import SwiftUI

struct FilaView: View {
    var pueblo: ModelPueblo
    
    
    var body: some View {
        HStack {
            pueblo.escudo
                .resizable()
                .frame(width: 35, height: 50)
            Text(pueblo.nombre)
            
            Spacer()
            
            if pueblo.isVisit {
                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    Group {
        FilaView(pueblo: pueblos[0])
        FilaView(pueblo: pueblos[1])
        FilaView(pueblo: pueblos[2])
    }
}

