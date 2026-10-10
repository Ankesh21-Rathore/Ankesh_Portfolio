//
//  Skills.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Skills: View {
    let language: [String] = ["Swift", "C++"]
    let frameAndTools: [String] = ["SwiftUI", "SwiftData","XCode", "VS Code", "Git", "GitHub"]
    let coreConcepts: [String] = ["MVVM", "DSA", "Problem Solving", "OOP", "OS"]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 40) {
                VStack(alignment: .leading, spacing: 6) {
                    Text("- Tech Stack")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)
                        .font(.subheadline)
                    Text("Skills & Tools")
                        .font(.title2)
                        .bold()
                }
                .frame(width: 350, alignment: .topLeading)
                
                // Language & Core
                
                Card(name: "Languages", systemImage: "bolt.square", elements: language)
                
                // Framework & Tool
                Card(name: "Framework & Tools", systemImage: "wrench.and.screwdriver", elements: frameAndTools)
                // Core Concepts
                Card(name: "Core Concepts", systemImage: "brain", elements: coreConcepts)
            }
            .padding(.vertical)
        }
    }
}

// Making Card for reusable
struct Card: View {
    let name: String
    let systemImage: String
    let elements: [String]
    
    var body: some View {
        VStack {
            Image(systemName: systemImage)
                .font(.title)
                .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)
                .font(.subheadline)
            Text(name)
                .font(.headline)
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 90), spacing: 8)], spacing: 8) {
                ForEach(elements, id: \.self) { lg in
                    Text(lg)
                        .font(.subheadline)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.black.opacity(0.2))
                                .stroke(Color.blue, lineWidth: 1)
                        )
                }
            }
        }
        .padding()
        .frame(maxWidth: 350)
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.1))
        )
    }
}
#Preview {
    Skills()
}
