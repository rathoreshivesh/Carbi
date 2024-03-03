import SwiftUI
import AVFoundation

struct FirstScreen: View {
    @State private var isTapped = false
    let player = AVPlayer(url: Bundle.main.url(forResource: "first", withExtension: "mp3")!)
    
    var body: some View {
//        NavigationView{
            HStack{
                VStack(alignment: .leading){
                    HStack{
                        Text("Sup,")
                            .font(
                                Font.custom("SF Pro Rounded", size: 48)
                            )
                        Text("Earth")
                            .font(
                                Font.custom("SF Pro Rounded", size: 48)
                            )
                            .fontWeight(.heavy)
                        Text("stewards!")
                            .font(
                                Font.custom("SF Pro Rounded", size: 48)
                            )
                        Spacer()
                    }
                    Text("\nKhai here, diving into the world of Carbi,  where your carbon journey begins.   Let's unfold this green story together!")
                        .font(
                            Font.custom("SF Pro Rounded", size: 48)
                        )
                    HStack{
                        PlayerView(player: player)
                                    .onAppear {
                                        player.play()
                                    }
                                    .frame(width: 1, height: 1)
                        HStack{
                            Spacer()
                            NavigationLink(destination: SecondScreen()){
                                Text("Tap to continue")

                            }
                            .navigationBarBackButtonHidden()
                            Spacer()
                        }
                        
                    }
                        .font(
                        Font.custom("SF Pro Rounded", size: 48)
                    )
                        .padding(.top, 30)
                }
                .padding(40)
                VStack{
                    Spacer()
                    Image("Khai")
                        .resizable()
                        .frame(width: 227, height: 506)
                        .aspectRatio(contentMode: .fit)
                        .offset(y: 50)
                }
                .padding(.trailing, 20)
            }
            .onTapGesture {
                print("Screen tapped!")
            }
            .foregroundColor(.white)
//            .background()
            .background(
                            // Full-screen tap gesture
                Color(#colorLiteral(red: 0, green: 0.6784313725, blue: 0.7098039216, alpha: 1))
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    withAnimation {
                                        isTapped = true
                                    }
                                }
            ).ignoresSafeArea()
//                        .navigationBarHidden(true)
//                        .background()
                    
                }
            }


