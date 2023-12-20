//
//  EnvironmentViewModel.swift
//  EnvironmentObjectSwiftulThinking
//
//  Created by Ricardo de Agostini Neto on 06/12/23.
//

import Foundation

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["Iphone", "Ipad", "iMac", "Apple Watch"])
        
    }
    
}
