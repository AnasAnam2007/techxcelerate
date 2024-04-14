import SwiftUI

struct foods2: View {
    var body: some View {
        
        NavigationView{
            ZStack{
                Color("purrr")
                    .ignoresSafeArea()
                
                VStack{
                    VStack(alignment: .leading, spacing: 20){
                        
                        
                        Image("fruits")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        
                        
                        //.frame(width: 300, height: 500)
                        HStack{
                            Text("Nutrients Checker")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.black)
                            
                            Image(systemName: "fork.knife")
                                .foregroundColor(Color.black)
                            
                            NavigationLink(destination: Pleasework()){
                                Image("learn")
                                    .resizable()
                                    .aspectRatio(contentMode:.fit)
                                    .frame(width: 90.0)
                                
                            }
                            
                            
                            
                        }
Text("Find out if your next meal is brain boosting! Answer the simple questionaire.")
                            .font(.footnote)
                        
                            .foregroundColor(Color.black)
                        
                    }
                    .padding()
                    .background(Rectangle())
                    .foregroundColor(.white)
                    .cornerRadius(15)
                    .shadow(radius: 20)
                    .padding()
                    
                    VStack(alignment: .leading, spacing: 20){
                        
                        
                        Image("diet2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(20)
                        
                        
                        //.frame(width: 300, height: 500)
                        HStack{
                            Text("Meal Prep")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .foregroundColor(Color.black)
                            
                            Image(systemName: "fork.knife")
                                .foregroundColor(Color.black)
                            
                            NavigationLink(destination: Pleasework()){
                                Image("learn")
                                    .resizable()
                                    .aspectRatio(contentMode:.fit)
                                    .frame(width: 90.0)
                                
                            }
                            
                        }
Text("Learn out how to alter your diet to ensure it is healthy and brain boosting!")
                            .font(.footnote)
                        
                            .foregroundColor(Color.black)
                        
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
    foods2()
}
