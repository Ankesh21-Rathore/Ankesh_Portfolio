import SwiftUI

struct ContentView: View {
    @State private var isShowingMenu: Bool = false
    @State private var path = NavigationPath() // Use Navigationpath for programmatic screen pushing
    
    enum MenuDest: Hashable {
        case skills, projects, about, getInTouch
    }
    
    var body: some View {
        NavigationStack(path: $path) {
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
                            SocialHandle(dest: "https://github.com/Ankesh21-Rathore", logo: "gitHub_logo", text: "GitHub") // Github Profile
                            SocialHandle(dest: "https://www.linkedin.com/in/ankesh-rathore", logo: "linkedIn_logo", text: "LinkedIn") // LinkedIn Profile
                            
                            SocialHandle(dest: "https://leetcode.com/u/Ankesh_Rathore/", logo: "leetcode_logo", text: "LeetCode") // LeetCode Profile
                        }
                        
                        Spacer(minLength: 80)
                        
                        Projects()

                        Spacer(minLength: 80)
                        
                        Skills()
                        
                        Spacer(minLength: 80)
                        
                        AboutView()
                        
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
            .navigationSubtitle("iOS Developer | Software Engineer")
            .navigationDestination(for: MenuDest.self) { destination in // Handle Routing then destination is append is append to path
                switch destination {
                case .skills:
                    Skills(showBackground: true)
                case .projects:
                    Projects()
                case .about:
                    AboutView()
                case .getInTouch:
                    GetInTouch()
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {isShowingMenu.toggle()
                    }) {
                        Label("Menu", systemImage: "square.lefthalf.filled")
                    }
                    
                    // Attaches the popover dropdown directly to the toolbar menu button
                    .popover(isPresented: $isShowingMenu, arrowEdge: .top) {
                        NavigationStack {
                            VStack(alignment: .leading, spacing: 14) {
                                Button(action: {
                                    isShowingMenu = false
                                    path.append(MenuDest.skills) // Append to path
                            }) {
                                    Label("Skills & Tools", systemImage: "bolt.square")
                                }
                                Button(action: {
                                    isShowingMenu = false
                                    path.append(MenuDest.projects) // Append to path
                                }) {
                                    Label("Projects", systemImage: "folder")
                                }
                                Button(action: {
                                    isShowingMenu = false
                                    path.append(MenuDest.about) // Append to path
                                }) {
                                    Label("About Me", systemImage: "person")
                                }
                            }
                            .presentationCompactAdaptation(.popover)
                        }
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}

