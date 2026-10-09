//
//  Projects.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Projects: View {
    var body: some View {
        VStack(spacing: 8) {
            VStack(alignment: .leading){
                Text("- What I've Built")
                    .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)

                    .font(.subheadline)
                Text("Projects")
                    .font(.title)
            }
            .frame(width: 350, alignment: .topLeading)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack {
                    Text("Student Placement Predictor")
                        .font(.title3)
                        .bold()
                    
                    Text(
                        """
                        Leading a 4-member team building a real-dataset-backed iOS app that processes student academic metrics into real-time visual insights. Designed the full client architecture and the entire SwiftUI frontend, managing timelines and optimising application flow.
                        """
                    )
                }
                .frame(width: 350, height: 250)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack {
                    Text("Network Directory")
                        .font(.title3)
                        .bold()
                    
                    Text(
                    """
A dynamic iOS networking and messaging application with SwiftData for robust
local persistence, bidirectional friend connections, and WhatsApp-style
navigation. Refactored to MVVM, separating UI from data models while parsing
local JSON structures.
"""
                    )
                    
                }
                .frame(width: 350, height: 250)
            }
        }
        .padding()
    }
}

#Preview {
    Projects()
}
