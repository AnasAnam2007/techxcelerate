//
//  frontal.swift
//  changePage
//
//  Created by Anas  Anam on 10/31/23.
//

import SwiftUI

struct frontal: View {
    var body: some View {
        
            ZStack{
                Color("PastelPink")
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                VStack{
                    HStack{
                        Spacer()
                        
                        Image("frontal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250.0)
                            .cornerRadius(20)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        Spacer()
                        
                    }
                    .padding(.all)
                    VStack{
                        VStack{
                            Image("frontal 1")
                                .resizable()
                                .aspectRatio(contentMode:.fit)
                                .frame(width: 160.0, height: 250.0)
                            
                        }
                        .padding(.vertical, -60)
                        
                        Text("Function: ")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hue: 0.578, saturation: 0.51, brightness: 0.822))
                        VStack{
                            Text(" Voluntary movement, expressive language and managing higher level executive functions (the ability to plan, organize, initiate, self-monitor and control responses).")
                                .foregroundColor(Color("PastelGray"))
                                .multilineTextAlignment(.center)
                        }
                            
                        Text("How to improve this part of the brain")
                            .font(.title3)
                            .fontWeight(.semibold)
                            .foregroundColor(Color(hue: 0.578, saturation: 0.51, brightness: 0.822))
                            .multilineTextAlignment(.center)
                            .padding()
                        Text("Memorizing acronyms, solving puzzles, cooking different recipes, exercise/meditation, and good sleep.")
                            .foregroundColor(Color("PastelGray"))
                            .multilineTextAlignment(.center)
                        
                    }
                    .padding()
                    .background(Rectangle())
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 20)
                    .padding()
                    
                    VStack{
                        VStack{
                            Text("Frontal Lobe Status Based on Age entered (40-60)")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(hue: 0.578, saturation: 0.51, brightness: 0.822))
                                .multilineTextAlignment(.center)
                        }
                        .padding(.bottom)
                        Text("Maybe stable for some due to variability. However, some people also may begin to experience subtle declines in processing speed and executive functions. ")
                            .font(.callout)
                            .fontWeight(.regular)
                            .foregroundColor(Color(hue: 1.0, saturation: 0.8, brightness: 0.395))
                            .multilineTextAlignment(.center)
                        Image("neutral")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 75.0)
                        
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
}

#Preview {
    frontal()
}
