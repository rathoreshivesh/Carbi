import SwiftUI
import AVFoundation

struct ThirdScreen: View {
    let player = AVPlayer(url: Bundle.main.url(forResource: "third", withExtension: "mp3")!)
    var body: some View {
        HStack{
            PlayerView(player: player)
                        .onAppear {
                            player.play()
                        }
                        .frame(width: 1, height: 1)
            VStack(alignment: .leading){
                Text("Alright, alright, I know you must be scratching your head, thinking,")
                Text("\"What's Khai blabbering about?\"")
                    .padding(.bottom, 20)
                HStack{
                    Text("Well, it's about the")
                    Text("carbon footprints")
//                        .font(.black)
                }
                Text("– those sneaky marks we leave on our planet with every step.")
                    .padding(.bottom, 20)
                Text("It's like our Earthly trail of breadcrumbs, and trust me, it's about time we start cleaning up after ourselves!")
                HStack{
                    Spacer()
                    NavigationLink(destination: FourthScreen()){
                        Text("Tap to continue")

                    }
                    .navigationBarBackButtonHidden()
                    Spacer()
                }
                    .padding(.top, 30)
            }
            .font(
                Font.custom("SF Pro Rounded", size: 48)
            )
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
        .foregroundColor(.white)
        .background(Color(#colorLiteral(red: 0, green: 0.6784313725, blue: 0.7098039216, alpha: 1)))    }
}

#Preview{
    ThirdScreen()
}
