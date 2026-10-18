import SwiftUI

struct ContentView: View {
    @State private var isShowingMenu: Bool = false
    @State private var path = NavigationPath() // Use Navigationpath for programmatic screen pushing
    
    enum MenuDest: Hashable {
        case resume, projects, skills, about, background, getInTouch
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
                                .stroke(Color.secondary, lineWidth: 1)
                        )
                        Spacer(minLength: 40)
                        
                        ResumeView()
                        
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
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .navigationTitle("Ankesh Rathore")
            .navigationSubtitle("iOS Developer | Software Engineer")
            .navigationDestination(for: MenuDest.self) { destination in // Handle Routing then destination is append is append to path
                switch destination {
                case .resume:
                    ResumeView(showBackground: true)
                case .projects:
                    Projects(showBackground: true)
                case .skills:
                    Skills(showBackground: true)
                case .about:
                    AboutView(showBackground: true)
                case .background:
                    Background(showBackground: true)
                case .getInTouch:
                    GetInTouch(showBackground: true)
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
                                Button(action: { // Projects
                                    isShowingMenu = false
                                    path.append(MenuDest.projects) // Append to path
                                }) {
                                    Label("Projects", systemImage: "folder.fill")
                                }
                                Button(action: { // Skills
                                    isShowingMenu = false
                                    path.append(MenuDest.skills)
                                }) {
                                    Label("Skills & Tools", systemImage: "bolt.square.fill")
                                }
                                
                                Button(action: { // About
                                    isShowingMenu = false
                                    path.append(MenuDest.about) // Append to path
                                }) {
                                    Label("About Me", systemImage: "person.fill")
                                }
                                Button(action: { // Qualification
                                    isShowingMenu = false
                                    path.append(MenuDest.projects) // Append to path
                                }) {
                                    Label("Education", systemImage: "graduationcap.fill")
                                }
                                Button(action: { // Contact
                                    isShowingMenu = false
                                    path.append(MenuDest.projects) // Append to path
                                }) {
                                    Label("Contact", systemImage: "message.badge.fill")
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

