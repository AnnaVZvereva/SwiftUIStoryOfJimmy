import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {

//        NavigationStack{
//            ZStack{
//                VStack{
//                    Text ("The Evolution of Jimmy Swift")
//                        .bold()
//                        .font(.title2)
//                        .padding(.bottom)
//                    
//                    Text ("Authors")
//                        .bold()
//                    Text ("Anna, Dean, Chantelle, Shaundra")
//                        .bold()
//                        .font(.callout)
//                    
//                    Image ("4")
//                        .resizable()
//                        .scaledToFit()
//                        .padding()
//                    NavigationLink(LocalizedStringKey("ChapterOne")) {
//                        Chapter1View()
//                            .bold()
//                        
//                        Image("10")
//                            .resizable()
//                            .scaledToFill()
//                            .ignoresSafeArea()
//                            .opacity(0.7)
//                        
//                    }
//                }
//            }
//        }
//    }
   // #Preview {
 //       ContentView()
 //   }
    
//}

        
        TabView {
            Chapter1View()
                .tabItem {
                    Label("Chapter 1", systemImage: "1.circle")
                }
            Chapter2View()
                .tabItem {
                    Label("Chapter 2", systemImage: "2.circle")
                }
            Chapter3View()
                .tabItem {
                    Label("Chapter 3", systemImage: "3.circle")
                }
            Chapter4View()
                .tabItem {
                    Label("Chapter 4", systemImage: "4.circle")
                }
            Chapter5View()
                .tabItem {
                    Label("Chapter 5", systemImage: "5.circle")
                }
        }
//        ZStack{
//            Image("Background")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//                .opacity(0.7)
//            
//            
//            VStack{
//                
//                Text ("The Evolution of Jimmy Swift")
//                    .bold()
//                    .font(.title2)
//                    .padding(.bottom)
//                    Spacer()
//                
//                Text ("Authors")
//                    .bold()
//                Text ("Anna, Dean, Chantelle, Shaundra")
//                    .bold()
//                    .font(.largeTitle)
//                    .frame(width: 400)
//                HStack {
//                    Image ("Jimmy Swift")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .padding()
//                    Image ("Sara Ruby")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .padding()
//                    Image ("Tommy Python")
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 50, height: 50)
//                        .padding()
//                }
//                
//            }
//            }
//            
        }
    }

    #Preview {
        ContentView()
    }


