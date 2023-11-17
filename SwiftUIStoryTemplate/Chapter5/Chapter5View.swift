import SwiftUI

struct Chapter5View: View {
    
    @State private var Background: Color = Color.gray
    //  @State private var isTheEnd = false
    
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
    
    var body: some View {
       
        NavigationView{
            ZStack {
                //  Color.gray
                // Background
                Image("Background")
                    .resizable()
                    .opacity(0.35)
                    .ignoresSafeArea()
                
                Background.opacity(0.001)
                // Background.ignoresSafeArea()
                
                VStack {
                    VStack {
                        // Background
                        Text("Chapter 5")
                          .font(.title)
                           .bold()
                        ScrollView() {
                            VStack {
                                Text("As you remember Jimmy Swift was young boy 2.2 version only.")
                                    .font(.title2)
                                
                                HStack {
                                    NavigationLink("About Jimmy") {
                                        AboutJimmyView(name: "Jimmy", picture: "Jimmy Swift", clr: .mint)
                                    }
                                    .bold()
                                    .font(.title3)
                                    
                                    Image("Jimmy Swift")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width:150 , height:150)
                                }
                                
                                Text("He did not know what he wanted that time. He has just played every day and has never think about his future or career.")
                                    .font(.title2)
                                    .padding(.leading)
                                Spacer()
                                
                                Text("Just playing on the playground every day... Just playing on the playground every day...Just playing on the playground every day...")
                                    .font(.title2)
                                
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
                                            AboutJimmyView(name: "Sara", picture: "Sara Ruby", clr: .red)
//                                            AboutSaraView()
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
                                            AboutJimmyView(name: "Tommy", picture: "Tommy Python", clr: .green)
//                                            AboutTommyView()
                                        }
                                        .font(.title3)
                                        .bold()
                                    }
                                }  //HStack ends
                                
                                Spacer()
                                
                                Text("Family changed his mind a lot. Jimmy Swift started to self-development and he achieved growing from 2.2 version until 5.1 version. He is changing to 6.0 now.He is already popular and loved many developers.")
                                    .font(.title2)
                                    .padding(.leading)
                                
                                Spacer()
                                
                                Text("Sometimes on Sunday Jimmy goes out with Sarah Ruby and Tommy Python even they don’t have too much free time. They share ideas about everything: problems and solutions evolution of coding and etc. Jimmy believes he can be the most used programming language in the world by 2050.")
                                    .font(.title2)
                                    .padding(.leading)
                            }
                        } //.opacity(0.1)
                        // .background(Color.clear)
                        //  .background(Color.white.opacity(0.001))
                        
//                        HStack {
//                            
//                            
//                            NavigationLink("The end") {
//                                TheEndView()
//                            }
//                            .bold()
//                            .font(.title)
//                            .foregroundColor(Color.black)
//                            
                            //                            Button {
                            //                                isTheEnd = true
                            //                            } label: {
                            //                                Text("The End")
                            //                                    .bold()
                            //                                    .font(.title3)
                            //                                    .foregroundColor(lemonYellow)
                            //                            }
                            //                            .sheet(isPresented: $isTheEnd) {
                            //                                Text("The End")
                            //
                            //                            }
                            
                        }
                    } //NavStack ends
                    
                    
                    
                }
            }
     //   .navigationBarTitle("Chapter6", displayMode: .large)
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    Text("Title")
//                        .font(.largeTitle.bold())
//                        .accessibilityAddTraits(.isHeader)
//                }
          //  }

        } //ZStack ends
    }
//}
#Preview {
    Chapter5View()
}



