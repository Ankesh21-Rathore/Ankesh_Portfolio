//
//  ResumeView.swift
//  Ankesh_Portfolio
//
//  Created by mac on 12/10/26.
//

import SwiftUI

struct ResumeView: View {
    var showBackground: Bool = false

    var body: some View {
        ZStack {
            if showBackground {
                RadialGradient(colors: [.white, .mint, .teal], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()
            }
            HStack {
                VStack {
                    Text("Resume:")
                        .font(.title)
                        .foregroundStyle(Color(red: 0.97, green: 0.97, blue: 0.98)) // Soft off-white for readability
                        .shadow(color: Color.black.opacity(0.8), radius: 2, x: 0, y: 2)
                        .bold()
                }
                
                if let resumeURL = Bundle.main.url(forResource: "resume", withExtension: "pdf") {
                    ShareLink(item: resumeURL, subject: Text("Ankesh Rathore - Resume"), message: Text("Here is my resume.")) {
                        HStack {
                            Image(systemName: "arrow.down.doc.fill")
                            
                            Text("Download")
                            
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .foregroundStyle(.black)
                    }
                } else {
                    Text("PDF not found")
                        .foregroundStyle(.red)
                }
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(.black.opacity(0.2))
                    .stroke(Color.secondary, lineWidth: 1)
            )
            .frame(maxWidth: 350)
        }
    }
}

#Preview {
    ResumeView()
}
