//
//  Projects.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Projects: View {
    var showBackground: Bool = false

    var body: some View {
        ZStack {
            if showBackground {
                RadialGradient(colors: [.white, .mint, .teal], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()
            }
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
                    .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black.opacity(0.1))
                                .stroke(Color.secondary, lineWidth: 1)
                    )
                
                
                    VStack {
                        Text("Network Directory")
                            .font(.title3)
                            .bold()
                        
                        Text(
                    """
A dynamic iOS networking and messaging application with SwiftData for robust local persistence, bidirectional friend connections, and WhatsApp-style navigation. Refactored to MVVM, separating UI from data models while parsing local JSON structures.
"""
                        )
                        
                    }
                    .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black.opacity(0.1))
                                .stroke(Color.secondary, lineWidth: 1)
                    )
            }
            .padding(.vertical)
            .frame(maxWidth: 350)
        }
    }
}

#Preview {
    Projects()
}
