//
//  Education.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Background: View {
    var showBackground: Bool = false

    var body: some View {
        ZStack {
            if showBackground {
                RadialGradient(colors: [.mint, .teal, .white], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()
            }
            
            VStack(spacing: 8) {
                VStack(alignment: .leading){
                    Text("- Background")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)
                    
                        .font(.subheadline)
                    Text("Education & Achievements")
                        .font(.title)
                }
                .frame(width: 350, alignment: .topLeading)
                
                
                BackgroundCard(
                    name: "Education",
                    tittle: "B.Tech in Computer Science & Engineering",
                    description:  """
Institute of Technology and Management, Gwalior 
August 2024 – 2028 

Pursuing a four-year undergraduate degree with a focus on algorithms, systems programming, and mobile development. Actively building real-world projects alongside academic coursework.                        
"""
                )
                
                // Certificate
                BackgroundCard(
                    name: "Certificate",
                    tittle: """
                        PW Skills
                        2025-2026
                        """,
                    description: """
Completed a comprehensive Data Structures & Algorithms course with C++, covering theory and applied practice through quizzes, coding tests, and progressive problem sets targeting algorithmic efficiency.
"""
                )
                BackgroundCard(
                    name: "Achievement",
                    tittle: "Competitive Programming Milestone Ongoing",
                    description: "Active problem solver on LeetCode focused on algorithmic efficiency and runtime complexity optimization. Continuously building skills across data structures, dynamic programming, and graph algorithms."
                )
            }
            .padding(.vertical)
            .frame(maxWidth: 350)
        }
    }
}

struct BackgroundCard: View {
    var name: String
    var tittle: String
    var description: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(name)
                .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 2)
            
                .font(.title3)
                .bold()
            Text(tittle)
            .font(.headline)
            .bold()
            
            Text(description)
            .font(.body)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.1))
                .stroke(Color.secondary, lineWidth: 1)
        )

    }
}
#Preview {
    Background()
}
