//
//  ContentView.swift
//  TemperatureConverterSlider
//
//  Created by Chaitanya Malani on 01/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var temperature: Double = 0.0
    
    var celsius: Double {
        return temperature
    }

    var fahrenheit: Double {
        return (temperature * 9/5) + 32
    }

    var kelvin: Double {
        return temperature + 273.15
    }


    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                // Celsius Section
                VStack{
                    Text("Celsius")
                        .bold()
                    Text("\(celsius, specifier: "%.2f")")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
                .foregroundColor(.black)
                
                // Fahrenheit Section
                VStack{
                    Text("Fahrenheit")
                        .bold()
                    Text("\(fahrenheit, specifier: "%.2f")")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.blue)
                .foregroundColor(.black)
                
                // Kelvin Section
                VStack{
                    Text("Kelvin")
                        .bold()
                    Text("\(kelvin, specifier: "%.2f")")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.green)
                .foregroundColor(.black)
            }
            .edgesIgnoringSafeArea(.all)
            
            // Temperature Slider
            VStack{
                Spacer()
                Slider(value: $temperature, in: -50...100, step: 0.1)
                    .padding()
                    .tint(Color.yellow)
            }
        }
    }
}

#Preview {
    ContentView()
}
