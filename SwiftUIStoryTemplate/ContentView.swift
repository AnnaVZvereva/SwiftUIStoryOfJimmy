import SwiftUI

// Use the relevant folders and swift files to code your chapter of the story. Keep ContentView as-is, unless you want a different type of navigation in your story.
struct ContentView: View {
    var body: some View {
        
        ZStack{
            VStack{
                Text ("The Evolution of Jimmy Swift")
                    .bold()
                    .font(.title2)
                    .padding(.bottom)
                
                Text ("Authors")
                    .bold()
                Text ("Anna, Dean, Chantelle, Shaundra")
                    .bold()
                    .font(.callout)
                
                Image ("4")
                    .resizable()
                    .scaledToFit()
                    .padding()
                
            }
            VStack{
                Image("10")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.7)
                
                
                
                
            }
            
        }
    }
}
    #Preview {
        ContentView()
    }

