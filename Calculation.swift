//
//
//import SwiftUI
//
//struct ContentView: View {
//    @State private var carMilesDriven = ""
//    @State private var electricityUsage = ""
//    @State private var wasteProduced = ""
//    @State private var totalCarbonFootprint = 0.0
//    
//    var body: some View {
//        VStack {
//            Text("Carbon Footprint Calculator")
//                .font(.title)
//                .padding()
//            
//            Section(header: Text("Transportation")) {
//                TextField("Car Miles Driven", text: $carMilesDriven)
//                    .keyboardType(.numberPad)
//            }
//            
//            Section(header: Text("Energy")) {
//                TextField("Electricity Usage (kWh)", text: $electricityUsage)
//                    .keyboardType(.numberPad)
//            }
//            
//            Section(header: Text("Waste")) {
//                TextField("Waste Produced (lbs)", text: $wasteProduced)
//                    .keyboardType(.numberPad)
//            }
//            
//            Button(action: calculateCarbonFootprint) {
//                Text("Calculate")
//                    .padding()
//                    .background(Color.blue)
//                    .foregroundColor(.white)
//                    .cornerRadius(10)
//            }
//            
//            Text("Total Carbon Footprint: \(totalCarbonFootprint) kg CO2e")
//                .padding()
//        }
//        .padding()
//    }
//    
//    func calculateCarbonFootprint() {
//        if let carMiles = Double(carMilesDriven),
//           let electricity = Double(electricityUsage),
//           let waste = Double(wasteProduced) {
//            
//            // Assume some constants for the carbon footprint calculation
//            let carFootprintPerMile = 0.42
//            let electricityFootprintPerKWh = 0.5
//            let wasteFootprintPerPound = 0.2
//            
//            let carFootprint = carMiles * carFootprintPerMile
//            let electricityFootprint = electricity * electricityFootprintPerKWh
//            let wasteFootprint = waste * wasteFootprintPerPound
//            
//            totalCarbonFootprint = carFootprint + electricityFootprint + wasteFootprint
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
import SwiftUI

struct Calculation: View {
    @State private var foodConsumption: Double = 0.0
    @State private var transportationMiles: Double = 0.0
    @State private var householdEnergyUsage: Double = 0.0
    @State private var totalCarbonFootprint: Double = 0.0
    
    var body: some View {
            HStack{
                VStack{
                    Image("InvertKhai")
                        .resizable()
                        .frame(width: 227, height: 506)
                        .aspectRatio(contentMode: .fit)
                        .offset(y: -50)
                        .offset(x: 20)
                    Spacer()
                }
                
                VStack {
                    VStack{
                        Text("Go Calculate")
                            .font(
                                Font.custom("SF Pro Rounded", size: 48)
                            )
                            .bold()
                            .padding()
                        
                        HStack {
                            Text("Food Consumption (kg CO2):")
                            Spacer()
                            TextField("Enter food consumption", value: $foodConsumption, formatter: NumberFormatter())
                                .frame(width: 400).cornerRadius(10)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        
                        HStack {
                            Text("Transportation Miles Driven:")
                            Spacer()
                            TextField("Enter miles driven", value: $transportationMiles, formatter: NumberFormatter())
                                .frame(width: 400).cornerRadius(10)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                        
                        HStack {
                            Text("Household Energy Usage (kWh):")
                            Spacer()
                            TextField("Enter household energy usage", value: $householdEnergyUsage, formatter: NumberFormatter())
                                .frame(width: 400).cornerRadius(10)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                        }
                    }
                    .padding()
                    .background(.thinMaterial)
                    .cornerRadius(40)
                    
                    //.frame(width: 400, height: 400)
                    
                    Button(action: {
                        calculateCarbonFootprint()
                    }) {
                        Text("Calculate")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    Text("Total Carbon Footprint: \(String(format: "%.2f", totalCarbonFootprint)) kg CO2")
                        .padding()
                }
                .padding()
            }
            .background(Color(#colorLiteral(red: 0, green: 0.6784313725, blue: 0.7098039216, alpha: 1)))
        }

    func calculateCarbonFootprint() {
        // You can customize the calculation logic based on your requirements
        (totalCarbonFootprint = foodConsumption * 1.2 + transportationMiles * 0.1 + householdEnergyUsage * 0.5)
        
    }
}

#Preview{
    Calculation()
}
