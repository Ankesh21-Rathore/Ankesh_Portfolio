//
//  AboutView.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
                VStack(alignment: .leading) {
                    Text("- About Me")
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)

                        .font(.subheadline)
                    Text("Crafting Apps with Purpose")
                        .font(.title2)
                }
                .frame(width: 350, alignment: .topLeading)
                
                    Text(
                        """
I'm a passionate iOS Developer and aspiring Software Engineer with a solid
foundation in C++ and Data Structures & Algorithms. My work lives at the
intersection of clean architecture and pixel-perfect UI. 

Hands-on experience architecting and building modern mobile applications using
Swift and SwiftUI, with a consistent focus on MVVM patterns and local data
persistence via SwiftData.

On the algorithmic side, I actively practice competitive programming on
LeetCode — sharpening my instincts for runtime complexity and elegant
solutions to hard problems.
"""
                    )
                    .frame(width: 350, height: 400)
                    .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black.opacity(0.1))
                    )
                
                
                    VStack(spacing: 10) {
                        Text("200+")
                            .font(.title)
                        Text("LeetCode Problems Solved")
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.black.opacity(0.1))
                            .frame(width: 350)
                    )
                    .padding()
                
                    VStack(spacing: 10) {
                        Text("2")
                            .font(.title)
                        Text("iOS Projects")
                    }
                    .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black.opacity(0.1))
                                .frame(width: 350)
                        )
                        .padding()

                
                    VStack(spacing: 10) {
                        Text("B.tech")
                            .font(.title)
                        Text(
                            """
CSE, Institute of Technology & Management - (2024-2028)
"""
                        )
                    }
                    .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.black.opacity(0.1))
                                .frame(width: 350)
                    )
        
    }
}

#Preview {
    AboutView()
}
