import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("Background")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.7)
            
            
            VStack{
                
                Text ("The Evolution of Jimmy Swift")
                    .bold()
                    .font(.title2)
                    .padding(.bottom)
                    Spacer()
                
                Text ("Authors")
                    .bold()
                Text ("Anna, Dean, Chantelle, Shaundra")
                    .bold()
                    .font(.largeTitle)
                    .frame(width: 400)
                HStack {
                    Image ("Jimmy Swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                    Image ("Sara Ruby")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                    Image ("Tommy Python")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                }
                
            }
            }
            
        }
    }

    #Preview {
        ContentView()
    }

