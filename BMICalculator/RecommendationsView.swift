import SwiftUI

struct RecommendationsView: View {
    var bmi: Double?
    
    var body: some View {
        VStack {
            if let bmi = bmi {
                Text("Your BMI is \(String(format: "%.2f", bmi))")
                    .padding()
                
                if bmi < 18.5 {
                    Text("You are underweight. Consider a balanced diet to gain weight.")
                } else if bmi < 24.9 {
                    Text("You have a normal weight. Keep up the good work!")
                } else if bmi < 29.9 {
                    Text("You are overweight. Consider a healthy diet and regular exercise.")
                } else {
                    Text("You are obese. It's important to consult a healthcare provider.")
                }
            } else {
                Text("Please calculate your BMI first.")
            }
        }
        .padding()
        .navigationTitle("Recommendations")
    }
}

struct RecommendationsView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendationsView(bmi: 22.0)
    }
}