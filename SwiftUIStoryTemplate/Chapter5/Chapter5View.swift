import SwiftUI

struct Chapter5View: View {
    
    @State private var Background: Color = Color.gray
    @State private var isShowJimmyProperties = false
    
    var body: some View {
   
        ZStack {
                Background
                .opacity(0.3)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                Text("As you remember Jimmy Swift was young boy 2.2 version only.")
                    .font(.title2)
                
                VStack (alignment: .center) {
                    Button {
                        isShowJimmyProperties = true
                    } label: {
                        Image("Jimmy Swift")
                            .resizable()
                            .scaledToFit()
                        //  .frame(width:200 , height:200)
                    }
                    .sheet(isPresented: $isShowJimmyProperties) {
                        VStack {
                            Rectangle()
                        }
                }
                
                }
            VStack{
                    Text("He did not know what he wanted that time. He has just played every day and has never think about his future or career.")
                    Text("Just playing on the playground every day... Just playing on the playground every day...Just playing on the playground every day...")
                    Text("Finally he decided to change his life because of his friends Tommy Python and Sarah Ruby.  Family changed his mind a lot. Jimmy Swift started to self-development and he achieved growing from 2.2 version until 5.1 version. He is changing to 6.0 now.He is already popular and loved many developers.Sometimes on Sunday Jimmy goes out with Sarah Ruby and Tommy Python even they don’t have too much free time.They share ideas about everything: problems and solutions evolution of coding and etc.Jimmy believes he can be the most used programming language in the world by 2050.")
                }
                
            }
        }
    }
}

    

#Preview {
    Chapter5View()
}
