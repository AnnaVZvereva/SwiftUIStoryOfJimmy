import SwiftUI

struct Chapter4View: View {
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
            Text("Chapter 4")
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
    Chapter4View()
}
