//
//  Education.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Background: View {
    var body: some View {
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

            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Education")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 2)
                        .font(.title3)
                        .bold()
                    
                    Text("B.Tech in Computer Science & Engineering")
                        .font(.headline)
                        .bold()
                    
                    Text(
                        """
Institute of Technology and Management, Gwalior 
August 2024 – 2028 

Pursuing a four-year undergraduate degree with a focus on algorithms, systems programming, and mobile development. Actively building real-world projects alongside academic coursework.                        
"""
                    )
                }
                .frame(width: 350, height: 250)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Certificate")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 2)

                        .font(.title3)
                        .bold()
                    Text(
                        """
                        PW Skills
                        2025-2026
                        """
                    )
                    .font(.headline)
                    .bold()
                    
                    Text(
                        """
                        Completed a comprehensive Data Structures & Algorithms course with C++, covering theory and applied practice through quizzes, coding tests, and progressive problem sets targeting algorithmic efficiency.
                        """
                    )
                    .font(.body)
                }
                .frame(width: 350, height: 250)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack(alignment: .leading, spacing: 8) {
                    Text("Achievement")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.5), radius: 2, x: 0, y: 2)

                        .font(.title3)
                        .bold()
                    Text(
                        """
                        Competitive Programming Milestone
                        Ongoing
                        """
                    )
                    .font(.headline)
                    .bold()
                    
                    Text(
                        """
Active problem solver on LeetCode focused on algorithmic efficiency and
runtime complexity optimization. Continuously building skills across data
structures, dynamic programming, and graph algorithms.                     
"""
                    )
                    .font(.body)
                }
                .frame(width: 350, height: 250)
            }
        }
        .padding()
    }
}

#Preview {
    Background()
}
