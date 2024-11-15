//
//  EscudoView.swift
//  PueblosJaen
//
//  Created by Pablo Peragón Garrido on 20/10/24.
//

import SwiftUI

struct EscudoView: View {
    var image: Image
    

    var body: some View {
        image
            .resizable()
            .frame(width: 100, height: 200)
    }
}
#Preview {
    EscudoView(image: Image("escudoJamilena"))
}
