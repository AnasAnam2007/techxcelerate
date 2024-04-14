//
//  checker.swift
//  changePage
//
//  Created by Anas  Anam on 11/1/23.
//

import SwiftUI

struct checker: View {
    @State private var vitaminCAmount: Double = 0.0
    @State private var vitaminEAmount: Double = 0.0
    @State private var omega3Amount: Double = 0.0
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("PastelPink")
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    Text("Nutrition Input")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("PastelGray"))
                        .padding(-1.0)
                    Text("Organizations such as The American Academy of Neurology, the National Institute on Aging and Alzheimer's Association encourage consuming these nutrients. Therefore these nutrients will be the basis for the checker. ")
                        .font(.subheadline)
                        .foregroundColor(Color("PastelGray"))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Vitamin C (mg)")
                        .foregroundColor(Color("PastelGray"))
                    TextField("Vitamin C (mg)", value: $vitaminCAmount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    Text("Vitamin E (mg)")
                        .foregroundColor(Color("PastelGray"))
                    TextField("Vitamin E (mg)", value: $vitaminEAmount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    Text("Vitamin B (mg)")
                        .foregroundColor(Color("PastelGray"))
                    TextField("Vitamin B (mg)", value: $omega3Amount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(destination: Pleasework()){
                        Text("CHECK")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("PastelGray"))
                            .cornerRadius(10)
                        
                    }
                    //Spacer()
                }
                
                .padding()
                .background(Rectangle())
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 20)
                .padding()
            }
        }
    }
    
}

#Preview {
    checker()
}
