import SwiftUI
import AVFoundation

struct SecondScreen: View {
    let player = AVPlayer(url: Bundle.main.url(forResource: "second", withExtension: "mp3")!)
    var body: some View {
        HStack{
            PlayerView(player: player)
                        .onAppear {
                            player.play()
                        }
                        .frame(width: 1, height: 1)
            VStack(alignment: .leading){
                Text("Well well, I do take care of my calorie intake in a day. Gotta keep the body fueled and fit, right?")
                    .padding(.bottom, 20)
                Text("So, why not we also take care of our planet too! It's like a workout for the Earth, and we're all in this eco-gym together!")
                HStack{
                    Spacer()
                    NavigationLink(destination: ThirdScreen()){
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
    SecondScreen()
}

struct PlayerView: UIViewControllerRepresentable {
    let player: AVPlayer

    func makeUIViewController(context: Context) -> UIViewController {
        let controller = UIViewController()
        let playerLayer = AVPlayerLayer(player: player)
        controller.view.layer.addSublayer(playerLayer)
        return controller
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
}
