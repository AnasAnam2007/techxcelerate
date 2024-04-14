//
//  Pleasework.swift
//  changePage
//
//  Created by Anas  Anam on 10/19/23.
//

import SwiftUI

struct Pleasework: View {
    var body: some View {
        
        NavigationView{
            
            
            NavigationLink(destination: OccipitalPage()){
                Image("temporal")
                    .resizable()
                    .aspectRatio(contentMode:.fit)
                    .frame(width: 120.0, height: 250.0)
            }
            .padding([.bottom, .trailing], 195.0)
        }
    }
}

#Preview {
    Pleasework()
}
