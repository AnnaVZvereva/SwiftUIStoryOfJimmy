
import SwiftUI

struct Chapter1View: View {
  
@State var isAnimated: Bool = false

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
            
            Button("The Beginning"){
               
                isAnimated.toggle()
            }
            ZStack{
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(isAnimated ? Color.black : Color.white)
                    .frame (width: 330, height: 300)
                
                
                Text ("Once upon a time a young and talented boy named Jimmy Swift, who was born by the famous company “Apple” in the technology world. He had happy and carefree life. He lived with his father Objective C and grandfather C. Also, he had close friends who always were with him Tommy Python and Sarah Ruby. Every day Jimmy was playing in the technology world solving “kids” problems, and spending time enjoying his happy live.")
                    .frame(width:300, height: 300)
            }
                Spacer()
            
        HStack {
            
            Image ("Jimmy Swift")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame (width: 100)
            
            
            
            Image ("Sara Ruby")
               .resizable()
                .aspectRatio(contentMode: .fit)
                .frame (width: 100)
            
            Image ("Tommy Python")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame (width: 100)
            }
// Spacer()
}
}
}
}

#Preview {
Chapter1View()
}
