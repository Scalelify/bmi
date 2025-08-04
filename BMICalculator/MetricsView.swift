import SwiftUI

struct MetricsView: View {
    @State private var heartRate: String = ""
    @State private var steps: String = ""
    
    var body: some View {
        VStack {
            TextField("Heart Rate (bpm)", text: $heartRate)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)
            
            TextField("Steps", text: $steps)
                .keyboardType(.numberPad)
                .padding()
                .border(Color.gray, width: 1)
            
            Button(action: saveMetrics) {
                Text("Save Metrics")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .navigationTitle("Health Metrics")
    }
    
    private func saveMetrics() {
        // Save metrics to CoreData or any other storage
    }
}

struct MetricsView_Previews: PreviewProvider {
    static var previews: some View {
        MetricsView()
    }
}