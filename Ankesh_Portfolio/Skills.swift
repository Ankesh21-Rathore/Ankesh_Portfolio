//
//  Skills.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct Skills: View {
    let language: [String] = ["Swift", "C++", "Problem Solving"]
    let frameAndTools: [String] = ["SwiftUI", "SwiftData", "VS Code", "Git & GitHub"]
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5) {
                Text("- Tech Stack")
                    .font(.subheadline)
                Text("Skills & Tools")
                    .font(.title2)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack {
                    Image(systemName: "bolt.square")
                        .font(.title)
                    Text("Language & Core")
                    
                    HStack {
                        ForEach(language, id: \.self) { lg in
                            ZStack {
                                rect()
                                Text(lg)
                                    .font(.body)
                            }
                        }
                    }
                }
                .padding()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.black.opacity(0.1))
                    .frame(width: 350, height: 250)
                VStack {
                    Image(systemName: "wrench.and.screwdriver")
                        .font(.title)
                    Text("Framework & Tools")
                    
                    HStack {
                        ForEach(frameAndTools, id: \.self) { ft in
                            ZStack {
                                rect()
                                Text(ft)
                                    .font(.body)
                            }
                        }
                        
                    }
                    
                }
                .padding()
                
            }
        }
    }
    
    func rect() -> some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(.black.opacity(0.2))
            .stroke(Color.blue, lineWidth: 1)
            .frame(width: 70, height: 40)
    }
}

#Preview {
    Skills()
}
