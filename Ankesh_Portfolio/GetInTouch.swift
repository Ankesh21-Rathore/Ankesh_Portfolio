//
//  GetInTouch.swift
//  Ankesh_Portfolio
//
//  Created by mac on 06/10/26.
//

import SwiftUI

struct GetInTouch: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.black.opacity(0.1))
                .frame(width: 350, height: 250)
            VStack {
                Text("- Get In Touch")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    GetInTouch()
}
