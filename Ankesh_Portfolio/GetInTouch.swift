//
//  GetInTouch.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct GetInTouch: View {
    var showBackground: Bool = false

    var body: some View {
        ZStack {
            if showBackground {
                RadialGradient(colors: [.white, .mint, .teal], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()
            }
            VStack {
                Text("- Get In Touch")
                    .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                    .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)
                    .font(.subheadline)
                
                VStack {
                    Text("Let's Build Something Great Togather")
                        .font(.title)
                    
                    Text("Open to internships, collaborations, and exciting new projects.")
                        .font(.subheadline)
                    
                    Link(destination: URL(string: "mailto:ankeshrathore812@gmail.com")!) {
                        HStack(spacing: 10) {
                            Image(systemName: "envelope.fill")
                                .font(.body)
                            
                            Text("ankeshrathore812@gmail.com")
                                .font(.subheadline)
                                .shadow(color: .white, radius: 10)
                        }
                        .foregroundStyle(.white) // Ensures text and icon remain white
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                    }
                    .buttonStyle(.plain) // Prevents blue accent color on press/hold
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(.black.opacity(0.1))
                    )
                    
                    HStack {
                        SocialHandle(dest: "https://github.com/Ankesh21-Rathore", logo: "gitHub_logo", text: "GitHub") // Github Profile
                        SocialHandle(dest: "https://www.linkedin.com/in/ankesh-rathore", logo: "linkedIn_logo", text: "LinkedIn") // LinkedIn Profile
                        
                        SocialHandle(dest: "https://leetcode.com/u/Ankesh_Rathore/", logo: "leetcode_logo", text: "LeetCode") // LeetCode Profile
                    }
                    .padding(.horizontal)
                    
                    Link(destination: URL(string: "+91-8120167198")!) {
                        HStack {
                            Image(systemName: "phone")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 27, height: 27)
                            Text("+91-8120167198")
                        }
                        .foregroundStyle(.white)
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .frame(width: 170, height: 30)
                    )
                }
                .padding(.vertical)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.black.opacity(0.1))
                        .stroke(Color.secondary, lineWidth: 1)
                        .frame(width: 350, height: 250)
                )
            }
        }
    }
}

struct SocialHandle: View {
    let dest: String
    let logo: String
    let text: String
    var body: some View {
        Link(destination: URL(string: dest)!) {
            HStack {
                Image(logo)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 27, height: 27)
                Text(text)
            }
            .foregroundStyle(.white)
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(.black)
                .opacity(0.3)
        )

    }
}

#Preview {
    GetInTouch()
}
