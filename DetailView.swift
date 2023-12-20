//
//  DetailView.swift
//  EnvironmentObjectSwiftulThinking
//
//  Created by Ricardo de Agostini Neto on 20/12/23.
//

import SwiftUI

struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        
        ZStack {
            
            Color.orange.ignoresSafeArea()
            
            NavigationLink(
                destination: FinalView(),
                label: {
                    Text(selectedItem)
                        .font(.headline)
                        .foregroundColor(.orange)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(30)
                    
                })
        }
    }
}
