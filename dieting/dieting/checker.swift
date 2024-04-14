//
//  bad.swift
//  dieting
//
//  Created by Anas  Anam on 10/29/23.
//

import SwiftUI

struct bad: View {
    var body: some View {
        ZStack {
            Color("PastelPink")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack(alignment: .leading, spacing: 20){
                    
                    HStack{
                        Spacer()

                        Image("down")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200.0)
                            .cornerRadius(20)
                        Spacer()

                    }
                    
                    //.frame(width: 300, height: 500)
                    HStack{
                        Spacer()

                        Text("NOT BRAIN BOOSTING")
                            .font(.title2)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(Color.black)
                            .multilineTextAlignment(.center)
                        Spacer()
                        
                    }
                    
                    Text("This snack/ meal is either bad for your brain or has no effect due to the lack of vitamins and antioxidants.")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                        
                    
                    Text("How Can We Make This More Optimal?")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hue: 0.001, saturation: 0.815, brightness: 0.795))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 50.0)
                        
                    
                    Text("There is room for improvements. This scale  takes into account the most common and significant nutrients when it comes to food directed to helping your brain. Those nutrients are:   ")
                        .font(.footnote)
                        .foregroundColor(Color.black)
                    
                    HStack{
                        Spacer()
                        Text("Vitamins B, C, and E")
                            .multilineTextAlignment(.center)
                            .frame(alignment: .leading)
                            .padding(6)
                            .padding(.horizontal, 16)
                            .background(Color("PastelGray"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        Spacer()
                    }
                    Text("Consider altering this meal. Check food labels accordingly to pick foods that are higher in those beneficial nutrients listed above.")
                        .font(.footnote)
                        .foregroundColor(Color.black)
                    HStack{
                        Spacer()
                        Text("Disclaimer")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hue: 0.001, saturation: 0.815, brightness: 0.795))
                            .padding(-10)
                        Spacer()
                    }
                    
                    
                    Text("Don't hyperfixated on the perfect meal. It's okay to saisfy cravings. Mental health is a big part of the brain as well.")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.black)
                }
                
                
                
                
                
            }
            .padding()
            .background(Rectangle())
            .foregroundColor(.white)
            .cornerRadius(15)
            .padding()

        }
    }
}

#Preview {
    bad()
}
