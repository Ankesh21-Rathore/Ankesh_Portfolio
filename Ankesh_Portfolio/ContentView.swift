import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            ZStack {
                LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    VStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 350, height: 100)
                                .foregroundStyle(.black)
                                .opacity(0.1)
                            Text("Building modern mobile experiences with Swift and SwiftUI. Passionate about clean architecture, efficient algorithms, and shipping software that feels native.")
                                .frame(width: 350, height: 100)
                                .foregroundStyle(.black)
                                .opacity(0.5)
                        }
                        Spacer()
                    
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black)
                                    .opacity(0.3)
                                    .frame(width: 110)
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
                                    .frame(width: 110)
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
                                    .frame(width: 110)
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
                    }
                }
            }
            .navigationTitle("Ankesh Rathore")
            .navigationSubtitle("iOS Developer")
        }
    }
}

#Preview {
    ContentView()
}

