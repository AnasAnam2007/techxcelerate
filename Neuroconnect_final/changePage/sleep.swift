import SwiftUI
struct PageView: View {
    @State private var sleepHours = ""
    @State private var answer = ""
    @State private var showMealPlanButton = false
    @State private var showSaveDataButton = false
    @State private var day = 1
    @State private var savedData = [String]()
    
    init() {
        if let savedData = UserDefaults.standard.stringArray(forKey: "SavedData") {
            self.savedData = savedData
            self.day = savedData.count + 1
        }
    }
    var body: some View {
        ScrollView {
            ZStack {
                Image("purple_background")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 375, height: 2000)
                VStack (spacing: 50) {
                    Text("Sleep Schedule")
                        .font(.system(size: 50))
                        .foregroundColor(Color.white)
                        .underline()
                    Text("Did you know that sleep deprivation can not only cause a decrease in your cognitive abilities and mood disorders but also increase and even cause neurological problems. For a person struggling with neurological problems, tracking your sleep is one of the best ways to control the problem ")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    HStack {
                            Image("SleepGraph1")
                                .resizable()
                                .scaledToFit()
                            Image("SleepGraph2")
                                .resizable()
                                .scaledToFit()
                        }
                    
                    Text("How many hours do you sleep?")
                        .font(.system(size: 20))
                        .foregroundColor(Color.white)
                    TextField("Enter Hours", text: $sleepHours)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .background(Color.white)
                        .cornerRadius(10)
                        .foregroundColor(.black)
                        .frame(width: 200)
                        .keyboardType(.numberPad)
                    Button(action: {
                        if let hours = Int(sleepHours) {
                            answer = calculateAnswer(hours)
                            if hours >= 1 && hours <= 12 {
                                showMealPlanButton = true
                                showSaveDataButton = true
                            } else {
                                showMealPlanButton = false
                                showSaveDataButton = false
                            }
                        } else {
                            answer = "Invalid input"
                            showMealPlanButton = false
                            showSaveDataButton = false
                        }
                    }) {
                        Text("Submit")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                 
                    
                    Text(answer)
                    
                    if savedData.count >= 7 {
                        let totalSleepHours = savedData
                            .suffix(7)
                            .compactMap { entry in
                                let components = entry.split(separator: ":")
                                if components.count == 2, let hours = Int(components[1].trimmingCharacters(in: .whitespaces)) {
                                    return hours
                                }
                                return nil
                            }
                            .reduce(0, +)
                        
                        if savedData.count >= 8 {
                            Text("You have reached optimal sleep hours")
                                .font(.system(size: 20))
                                .foregroundColor(Color.green)
                        }
                        
                            if totalSleepHours > 7 {
                                Text("You have reached optimal sleep hours")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.green)
                            } else {
                                Text("Total Hours of Sleep: 46, you are 4 hours below optimal")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color.red)
                            }
                        }
                        
                        
                        if showSaveDataButton {
                            VStack {
                                Button(action: {
                                    savedData.append("\(day): \(sleepHours) hours")
                                    saveSleepData()
                                    day += 1
                                    sleepHours = ""
                                    print(savedData)
                                }) {
                                    Text("Save Data")
                                        .padding()
                                        .background(Color.orange)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                }
                            }
                            
                            Text("Click the Save Data button and enter your hours of sleep for the last 7 days.")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            Text("Current Sleep")
                                .font(.system(size: 20))
                                .foregroundColor(Color.white)
                                .underline()
                        }
                        
                        ForEach(savedData, id: \.self) { data in
                            Text(data)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                        }
                        if showMealPlanButton {
                            NavigationLink(destination: MealPlanView()) {
                                Text("Continue to Final Assessment")
                                    .padding()
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                                
                            }
                        }
                    Spacer()

                    }
                    
                    
                }
            }
        }
        func calculateAnswer(_ hours: Int) -> String {
            switch hours {
            case 1...4:
                return "You should consider getting more sleep. With this amount of sleep you will have difficulties to learn, create memories, concentrate and respond quickly.                                                                     You can include foods such as kiwi, cherries, milk, fatty fish, nuts, and rice into your meal plan to promote better sleep."
            case 5...6:
                return "You're getting an ok amount of sleep. You will have slight difficulties in daytime functioning and mental health. We suggest sleeping up to 8-10 hours on the weekends to make up for slight losses in sleep and also eating higly nutritious foods such as fruits. "
            case 7...8:
                return "You are getting the recommended amount of sleep. You are currently at optimal sleep levels for a healthy lifestyle. We suggest proceeding to the meal plan page and creating yourself a nutritious diet."
            case 9...12:
                return "You're getting plenty of sleep. You are currently at optimal sleep levels for a healthy lifestyle. We suggest proceeding to the meal plan page and creating yourself a nutritious diet."
            default:
                return "Please enter a valid number between 1 and 12."
            }
        }
        
        
        func saveSleepData() {
            UserDefaults.standard.set(savedData, forKey: "SavedData")
        }
    }
    
    
    
    struct PageView_Previews: PreviewProvider {
        static var previews: some View {
            PageView()
        }
    }
