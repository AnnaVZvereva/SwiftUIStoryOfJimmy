import SwiftUI

struct Chapter1View: View {
    var body: some View {
        ZStack{
            
            VStack{
                Image("Background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .opacity(0.7)
                
                
            }
            VStack{
            Text("Chapter 1")
                    .bold()
                    .font(.title2)
                Spacer()
            HStack {
                
                Image ("Jimmy Swift")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame (width: 50)
                
                
                
                Image ("Sara Ruby")
                   .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame (width: 50)
                
                Image ("Tommy Python")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame (width: 50)
                }
//                Spacer()
            }
            }
        }
    }



#Preview {
    Chapter1View()
}
