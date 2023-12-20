//
//  FinalView.swift
//  EnvironmentObjectSwiftulThinking
//
//  Created by Ricardo de Agostini Neto on 20/12/23.
//

import SwiftUI

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.black]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        
                        Text(item)
                        
                    }
                    
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
            
        }
    }
}

#Preview {
    FinalView()
}
