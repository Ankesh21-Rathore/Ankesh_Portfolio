import SwiftUI
import Playgrounds

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
                        
                        Spacer()
                    
                        HStack {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black)
                                    .opacity(0.3)
                                    .frame(width: 100)
                                Link("GitHub", destination: URL(string: "https://github.com/Ankesh21-Rathore")!)
                                    .font(.body)
                                    .foregroundStyle(.white)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black)
                                    .opacity(0.3)
                                    .frame(width: 100)
                                Link("LinkedIn", destination: URL(string: "https://www.linkedin.com/in/ankesh-rathore")!)
                                    .font(.body)
                                    .foregroundStyle(.white)
                            }
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundStyle(.black)
                                    .opacity(0.3)
                                    .frame(width: 100)
                                Link("LeetCode", destination: URL(string: "https://leetcode.com/u/Ankesh_Rathore/")!)
                                    .font(.body)
                                    .foregroundStyle(.white)
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

#Playground {
   let c = 1 + 2
}
