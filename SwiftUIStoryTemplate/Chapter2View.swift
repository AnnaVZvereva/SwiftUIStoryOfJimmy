import SwiftUI
import UIKit
/// Call Commands
let mainCharater = String("Jimmy Swift")
let friendOneName = String("Tommy Python")
let friendTwoName = String ("Sarah Ruby")
let friendName: [String] = ["Tommy Python" , "Sarah Ruby"]
let collegeName: String = "Update University"
let friendCollege = true
let friendMean = false
var friendToTheLeft = false
var friendToTheRight = true
var chapterNumber = 2
var chapterName: String = ("'Friends!'")
func chapterIntro () {
    print ("This is Chapter \(chapterNumber), \(chapterName) ")
}

func friendCall() {
    print ("Ah, there's his friend! They were on the right!")
}
func departure() {
    print ("With that, he decided to go on his next adventure.")
}


/// Story start

struct Chapter2View: View {
    @State private var showingAlert = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Image("parkNew")
                    .resizable()
                    .ignoresSafeArea()
                    .blur(radius: 5.0)
                    .frame(width: 450, height: 900)
                Rectangle()
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .frame(width: 350, height: 730)
                    .cornerRadius(30)
                    .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                VStack{
                    NavigationLink(LocalizedStringKey("Home")) {
                        ContentView()
                            .bold()
                    }
                    .foregroundColor(.blue)
                    .font(.headline)
                    .bold()
                    
                
                    Text("Chapter Two(2):\n Friends, How Many Of Us Have Them?")
                        .foregroundColor(.black)
                        .padding()
                        .font(.headline)
                        .multilineTextAlignment(.center)
                    ZStack{
                        Image("swing")
                            .resizable()
                            .frame(width: 200, height: 250)
                        //.padding()
                        Image("4")
                            .resizable()
                            .frame(width: 400, height: 400)
                            .padding(-100)
                    }
                    Text("One day, Jimmy decided to go to the park and get some air.")
                        .frame(width: 320)
                    Text("While sitting by himself on the swingset, he thought he'd look around to find someone to talk to.")
                        .padding(-5)
                        .frame(width: 320)
                    Text("How high is \(mainCharater) going on the swing?")
                        .font(.title3)
                        .frame(width: 320)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.teal)
                        .italic()
                    HStack {
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("High"){
                                showingAlert = true
                            }
                            .alert("Jimmy is living life on the edge, isnt he? He's only 2 and going super high!", isPresented: $showingAlert) {
                                Button("You're right, lets relax a little.", role: .cancel) { }
                            }
                                
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 70, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("Medium"){
                                showingAlert = true
                            }
                            .alert("Jimmy swings a couple of feet off of the ground", isPresented: $showingAlert) {
                                Button("Okay, cool.", role: .cancel) { }
                            }
                        }
                        ZStack{
                            Rectangle()
                                .frame(width: 50, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            Button ("Low"){
                                showingAlert = true
                            }
                            .alert("Jimmy rocks back and forth on his feet, keeping the swing low and slow.", isPresented: $showingAlert) {
                                Button("Boooorinnnng.", role: .cancel) { }
                            }
                        }
                        }
                    HStack{
                        ZStack{
                            Rectangle()
                                .frame(width: 150, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Previous Chapter")) {
                                Chapter1View()
                            }
                        }
                        .padding()
                        ZStack{
                            Rectangle()
                                .frame(width: 90, height: 30)
                                .foregroundColor(.white)
                                .cornerRadius(8.0)
                                .opacity(0.6)
                            NavigationLink(LocalizedStringKey("Next Page")) {
                                Chapter2pt2()
                            }
                        }
                        }
                    
                    }
                }
            }
            
        }
    }


#Preview {
    Chapter2View()
}
