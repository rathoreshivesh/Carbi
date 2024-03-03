import SwiftUI
import AVFoundation

struct FifthScreen: View {
    let player = AVPlayer(url: Bundle.main.url(forResource: "fifth", withExtension: "mp3")!)
    var body: some View {
        HStack{
            PlayerView(player: player)
                        .onAppear {
                            player.play()
                        }
                        .frame(width: 1, height: 1)
            VStack(alignment: .leading){
                Text("Now that we know the Earth's keeping tabs on us, let's take charge and calculate our carbon footprint. ")
                    .padding(.bottom, 20)
                Text("It's time to turn those numbers into a roadmap for a more eco-friendly journey!")
                HStack{
                    Spacer()
                    NavigationLink(destination: ThirdScreen()){
                        Text("Tap to keep the eco-journey rolling!")
                            .foregroundColor(.black)
                            .font(
                                Font.custom("SF Pro Rounded", size: 48)
                            )

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
    FifthScreen()
}
