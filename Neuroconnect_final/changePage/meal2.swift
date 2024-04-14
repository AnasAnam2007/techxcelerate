import SwiftUI

struct meals2: View {
    @State private var randomImage: String = "plan"
        
// Initialize with a default image name
    
    let imageNames = ["m1", "m2", "m3"] // Replace with your image names
    
    var body: some View {
        ZStack{
            Color("PastelPink")
                .edgesIgnoringSafeArea(.all)
            
            
            ScrollView{
                VStack{
                    
                    VStack{
                        Text("")
                        VStack{
                            Text("")
                            
                            HStack{
                                Spacer()
                                Text("Why?")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(Color("PastelPurple"))
                                
                                
                                Spacer()
                            }
                            HStack{
                                Spacer()
                                Text("Our brains are remarkable, complex organs that require a delicate balance of nutrients to thrive. While genetic factors play a role in brain health, the choices we make in our diets can have a profound impact on our cognitive well-being. Research from credible sources, including the Harvard T.H. Chan School of Public Health and the National Institute on Aging, reveals the undeniable link between nutrition and brain health. ")
                                    .foregroundColor(Color("PastelGray"))
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                        }
                        .padding(.bottom)
                        .background(Rectangle())
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 20)
                        .padding()
                        
                        HStack{
                            Spacer()

                            Image("foodbrain")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250.0)
                                .cornerRadius(20)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            Spacer()

                        }
                        
                        HStack{
                            Spacer()
                                .frame(width: 50.0)
                            Text("The brain is a hungry powerhouse, demanding a consistent supply of nutrients to function optimally. Here are some key nutrients and their roles in preserving and enhancing brain function::")
                                .font(.body)
                                .fontWeight(.semibold)
                                .foregroundColor(Color("PastelPurple"))
                                .multilineTextAlignment(.center)
                            Spacer()
                                .frame(width: 50.0)

                        }
                        
                        VStack{
                            Text("")
                            Text("Omega-3 Fatty Acids")
                                .multilineTextAlignment(.center)
                                .frame(alignment: .leading)
                                .padding(6)
                                .padding(.horizontal, 16)
                                .background(Color("PastelGray"))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text("Found in fatty fish, flaxseeds, and walnuts, are essential for maintaining brain structure and function. They enhance memory, protect against cognitive decline, and even assist in mood regulation.")
                                .font(.caption)
                                .foregroundColor(Color("PastelGray"))
                                .multilineTextAlignment(.center)
                            
                            Text("Antioxidants")
                                .multilineTextAlignment(.center)
                                .frame(alignment: .leading)
                                .padding(6)
                                .padding(.horizontal, 16)
                                .background(Color("PastelGray"))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text("Abundant in colorful fruits and vegetables, antioxidants such as vitamins C and E, along with polyphenols, help shield the brain from oxidative stress and inflammation. ")
                                .font(.caption)
                                .foregroundColor(Color("PastelGray"))
                                .multilineTextAlignment(.center)
                            
                            Text("B Vitamins")
                                .frame(alignment: .leading)
                                .padding(6)
                                .padding(.horizontal, 16)
                                .background(Color("PastelGray"))
                                .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text("This group, including B6, B9 (folate), and B12, plays a pivotal role in neurotransmitter production, impacting mood, memory, and overall brain vitality. They're found in leafy greens, legumes, and lean meats. ")
                                .font(.caption)
                                .foregroundColor(Color("PastelGray"))
                                .multilineTextAlignment(.center)
                            
                        }
                        .padding()
                        .background(Rectangle())
                        .foregroundColor(.white)
                        .cornerRadius(15)
                        .shadow(radius: 20)
                        .padding()
                    }
                    
                    
                    
                        
                    
                    
                    Image(randomImage)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350, height: 500)
                        .padding()
                        .cornerRadius(20)
                        .padding(-70)
                    
                    Button(action: {
                                    randomImage = imageNames.randomElement() ?? "placeholder"
                                }) {
                                    Text("Generate Possible Meal Plan")
                                        .font(.headline)
                                        .foregroundColor(.white)
                                        .padding()
                                        .background(Color("PastelGray"))
                                        .cornerRadius(10)
                                }
                        
                    
                }
            }
            
        }
        
    }
}

#Preview {
    meals2()
}
