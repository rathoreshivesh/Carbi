import SwiftUI
import AVFoundation

struct FourthScreen: View {
    let player = AVPlayer(url: Bundle.main.url(forResource: "fourth", withExtension: "mp3")!)
    var body: some View {
        HStack{
            PlayerView(player: player)
                        .onAppear {
                            player.play()
                        }
                        .frame(width: 1, height: 1)
            VStack(alignment: .leading){
                Text("So, Carbon Footprint is basically the Earth's way of keeping score on our impact – it's like a carbon diary tracking the environmental consequences of our daily choices. ")
                    .padding(.bottom, 20)
                Text("From the morning coffee to the late-night Netflix binge, everything leaves a mark.")
                HStack{
                    Spacer()
                    NavigationLink(destination: FifthScreen()){
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
    FourthScreen()
}
