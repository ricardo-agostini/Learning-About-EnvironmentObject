//
//  ContentView.swift
//  EnvironmentObjectSwiftulThinking
//
//  Created by Ricardo de Agostini Neto on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        
        NavigationView {
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                            Text(item)
                        })
                }
                
            }.navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
        
        
    }
}



