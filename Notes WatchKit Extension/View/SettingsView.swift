//
//  SettingsView.swift
//  Notes WatchKit Extension
//
//  Created by Camilo Gonzalez on 25-08-22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var sliderValue: Float = 1.0
    
    // MARK: - FUNCTION
    
    func update() {
        lineCount = Int(sliderValue)
    }
    
    // MARK: - BODY
    
    var body: some View {
        VStack(spacing: 8) {
            // HEADER
            HeaderView(title: "Settings")
            // ACTUAL LINE COUNT
            Text("Lines: \(lineCount)".uppercased())
                .fontWeight(.bold)
            
            // SLIDER
            Slider(value: Binding(get: {
                self.sliderValue
            }, set: {(newValue) in
                self.sliderValue = newValue
                self.update()
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        } //: VSTACK
        .onAppear {
            sliderValue = Float(lineCount)
        }
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
