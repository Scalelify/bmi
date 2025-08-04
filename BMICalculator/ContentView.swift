import SwiftUI

struct ContentView: View {
    @State private var height: String = ""
    @State private var weight: String = ""
    @State private var bmi: Double?
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Height (cm)", text: $height)
                    .keyboardType(.decimalPad)
                    .padding()
                    .border(Color.gray, width: 1)
                
                TextField("Weight (kg)", text: $weight)
                    .keyboardType(.decimalPad)
                    .padding()
                    .border(Color.gray, width: 1)
                
                Button(action: calculateBMI) {
                    Text("Calculate BMI")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                if let bmi = bmi {
                    Text("Your BMI is \(String(format: "%.2f", bmi))")
                        .padding()
                }
                
                NavigationLink(destination: MetricsView()) {
                    Text("Track Health Metrics")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                
                NavigationLink(destination: RecommendationsView(bmi: bmi)) {
                    Text("Get Recommendations")
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            .navigationTitle("BMI Calculator")
        }
    }
    
    private func calculateBMI() {
        guard let height = Double(height), let weight = Double(weight), height > 0 else {
            return
        }
        bmi = weight / ((height / 100) * (height / 100))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}