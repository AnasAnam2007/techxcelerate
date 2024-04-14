//
//  login.swift
//  changePage
//
//  Created by Anas  Anam on 11/1/23.
//

import SwiftUI

struct login: View {
    @State private var vitaminCAmount: String = "enter"
    @State private var vitaminEAmount: String = "enter"
    @State private var omega3Amount: Double = 0.0
    
    var body: some View {
        
        NavigationView{
            ZStack {
                Color("PastelPink")
                    .edgesIgnoringSafeArea(.all)
                
                
                
                VStack {
                    HStack{
                        Spacer()

                        Image("icon")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                            .cornerRadius(20)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()

                    }
                    Text("Welcome To NeuroConnect")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("PastelGray"))
                        .padding(-1.0)
                    Text("")
                        .font(.subheadline)
                        .foregroundColor(Color("PastelGray"))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Text("Enter email")
                        .foregroundColor(Color("PastelGray"))
                    TextField("", value: $vitaminCAmount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    Text("Enter gender")
                        .foregroundColor(Color("PastelGray"))
                    TextField("", value: $vitaminEAmount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    Text("Enter Age")
                        .foregroundColor(Color("PastelGray"))
                    TextField("", value: $omega3Amount, formatter: NumberFormatter())
                        .padding()
                        .background(Color("PastelGray"))
                        .cornerRadius(10)
                        .padding()
                    
                    NavigationLink(destination: ContentView()){
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
    login()
}
