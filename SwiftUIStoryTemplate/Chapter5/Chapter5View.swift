import SwiftUI

struct Chapter5View: View {
    
    //   @State private var Background: Color = Color.gray
    @State private var isShowJimmyProperties = false
    
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
    
    var body: some View {
        
        ZStack {
            Image("Background")
                .resizable()
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                
                VStack {
                    //  Background
                    Text("Chapter 5")
                        .font(.title)
                        .bold()
                }
                NavigationStack{
                    
                    ScrollView(.vertical) {
                        VStack {
                            // .ignoresSafeArea()
                            //   VStack {
                            //  Background
                            //                            Text("Chapter 5")
                            //                                .font(.title)
                            //                                .bold()
                            Text("As you remember Jimmy Swift was young boy 2.2 version only.")
                                .font(.title2)
                            Spacer()
                            
                            HStack {
                                //                            Button {
                                //                                isShowJimmyProperties = true
                                //                            } label: {
                                //                                Text("About Jimmy")
                                //                                    .bold()
                                //                                    .font(.title3)
                                //                                    .foregroundColor(lemonYellow)
                                //                            }
                                NavigationLink("About Jimmy") {
                                    AboutJimmyView()
                                }
                                    .bold()
                                    .font(.title3)
                                  //  .foregroundColor(lemonYellow)
                                // .background(skyBlue)
                                // .cornerRadius(10)
                                Image("Jimmy Swift")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width:150 , height:150)
                                
                                //  .background()
                                //                                    .sheet(isPresented: $isShowJimmyProperties) {
                                //                                        VStack {
                                //
                                //                                            Rectangle()
                                //                                        }
                                //                                    }
                            }
                            .padding(.leading)
                            Text("He did not know what he wanted that time. He has just played every day and has never think about his future or career.")
                                .font(.title2)
                                .padding(.leading)
                            Spacer()
                            Spacer()
                            Text("Just playing on the playground every day... Just playing on the playground every day...Just playing on the playground every day...")
                                .font(.title2)
                                .padding(.leading)
                            Spacer()
                            Spacer()
                            Text("Finally he decided to change his life because of his friends Tommy Python and Sarah Ruby.")
                                .font(.title2)
                                .padding(.leading)
                            HStack{
                                VStack{
                                    Image("Sara Ruby")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150 , height:150)
                                    
                                    NavigationLink("About Sara") {
                                        AboutSaraView()
                                        
                                    }
                                    .font(.title3)
                                    .bold()
                                }
                                VStack {
                                    
                                    Image("Tommy Python")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150 , height:150)
                                    NavigationLink("About Tommy") {
                                        AboutTommyView()
                                    }
                                    .font(.title3)
                                    .bold()
                                }
                            }  //HStack ends
                            Text("Family changed his mind a lot. Jimmy Swift started to self-development and he achieved growing from 2.2 version until 5.1 version. He is changing to 6.0 now.He is already popular and loved many developers. Sometimes on Sunday Jimmy goes out with Sarah Ruby and Tommy Python even they don’t have too much free time. They share ideas about everything: problems and solutions evolution of coding and etc. Jimmy believes he can be the most used programming language in the world by 2050.")
                                .font(.title2)
                                .padding(.leading)
                            Spacer()
                            Spacer()
                            
                        }
                    }
                    
                    
                }
            }
        }
    }
}
#Preview {
    Chapter5View()
}

