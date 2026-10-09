//
//  GetInTouch.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct GetInTouch: View {
    var body: some View {
        VStack {
            Text("- Get In Touch")
                .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                    .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)

                .font(.subheadline)
            
        }
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.1))
                .frame(width: 350, height: 250)
            VStack(spacing: 8) {
                Text("Let's Build Something Great Togather")
                    .font(.title)
                
                Text("Open to internships, collaborations, and exciting new projects.")
                    .font(.subheadline)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.black.opacity(0.1))

                    Link(destination: URL(string: "mailto:ankeshrathore812@gmail.com")!) {
                        HStack(spacing: 10) {
                            Image(systemName: "envelope.fill")
                                .font(.body)

                            Text("ankeshrathore812@gmail.com")
                                .font(.subheadline)
                        }
                        .foregroundStyle(.white) // Ensures text and icon remain white
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                    }
                    .buttonStyle(.plain) // Prevents blue accent color on press/hold
                }
                .fixedSize()
                
                HStack {
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .frame(width: 110, height: 30)
                        Link(destination: URL(string: "https://github.com/Ankesh21-Rathore")!) {
                            HStack {
                                Image("gitHub_logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 27, height: 27)
                                
                                Text("GitHub")
                            }
                            .foregroundStyle(.white)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .frame(width: 110, height: 30)
                        Link(destination: URL(string: "https://www.linkedin.com/in/ankesh-rathore")!) {
                            HStack {
                                Image("linkedIn_logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 27, height: 27)
                                Text("LinkedIn")
                            }
                            .foregroundStyle(.white)
                        }
                    }
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundStyle(.black)
                            .opacity(0.3)
                            .frame(width: 110, height: 30)
                        Link(destination: URL(string: "https://leetcode.com/u/Ankesh_Rathore/")!) {
                            HStack {
                                Image("leetcode_logo")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 27, height: 27)
                                Text("LeetCode")
                            }
                            .foregroundStyle(.white)
                        }
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.black)
                        .opacity(0.3)
                        .frame(width: 170, height: 30)
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
                }
            }
        }
    }
}

#Preview {
    GetInTouch()
}
