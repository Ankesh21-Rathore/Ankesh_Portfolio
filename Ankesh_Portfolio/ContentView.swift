import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                RadialGradient(colors: [.mint, .teal, .white], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        HStack {
                                Text("Building modern mobile experiences with Swift and SwiftUI. Passionate about clean architecture, efficient algorithms, and shipping software that feels native.")
                                    .foregroundStyle(.black)
                                ZStack {
                                    Image("profile")
                                        .resizable()
                                        .scaledToFit()
                                        .clipShape(RoundedRectangle(cornerRadius: 30))
                                }
                            }
                        .frame(width: 350, height: 200)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.black.opacity(0.1))
                        )
                        Spacer(minLength: 40)
                        
                        HStack {
                            Link(destination: URL(string: "https://github.com/Ankesh21-Rathore")!) {
                                HStack {
                                    Image("gitHub_logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 27, height: 27)
                                    Text("GitHub")
                                        .foregroundStyle(.white)
                                }
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black.opacity(0.3))
                            )
                            
                            Link(destination: URL(string: "https://www.linkedin.com/in/ankesh-rathore")!) {
                                HStack {
                                    Image("linkedIn_logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 27, height: 27)
                                    Text("LinkedIn")
                                        .foregroundStyle(.white)
                                }
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black.opacity(0.3))
                            )
                            
                            
                            Link(destination: URL(string: "https://leetcode.com/u/Ankesh_Rathore/")!) {
                                HStack {
                                    Image("leetcode_logo")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 27, height: 27)
                                    Text("LeetCode")
                                        .foregroundStyle(.white)
                                }
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black.opacity(0.3))
                            )
                        }
                        
                        Spacer(minLength: 80)
                        
                        AboutView()
                        
                        Spacer(minLength: 80)
                        
                        Skills()
                        
                        Spacer(minLength: 80)

                        Projects()
                        
                        Spacer(minLength: 80)
                        
                        Background()
                        
                        Spacer(minLength: 80)
                        
                        GetInTouch()
                        
                        Spacer(minLength: 80)
                        
                        Text("Designed & Coded by Ankesh Rathore")
                            .font(.footnote)
                    }
                }
            }
            .navigationTitle("Ankesh Rathore")
            .navigationSubtitle("iOS Developer | Software Engineer")A
        }
    }
}

#Preview {
    ContentView()
}

