import SwiftUI
import AVFoundation
class SoundManager {
  static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "story", withExtension: ".mp3") else { return }
        
        do {
            
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
       
    }
}

struct reading: View {
    
        var soundmanger = SoundManager()
           
       // var audioPlayer: Sound

           var body: some View {
               ZStack {
                   Color(hex: 0xF8F8F8)
                       .edgesIgnoringSafeArea(.all)

                   Image("fox")
                       .resizable()
                       .aspectRatio(contentMode: .fit)
                       .frame(width: 328.57, height: 262)
                       .padding(.bottom,900)

                   Rectangle()
                       .fill(Color(hex: 0xFCF5EC))
                       .frame(width: 685, height: 551)
                       .border(Color(hex: 0xFFFFFF), width: 10)
                       .position(x: 420, y: 600)
                   Button(action: {
                       SoundManager.instance.playSound()
                           // Add your action here when the button is tapped
                           print("Button tapped!")
                       }) {
                           Image("speaker")
                               .resizable()
                               .frame(width: 50, height: 50)
                               .foregroundColor(.blue)
                               .position(x: 150, y: 400)
                       }
                   
                   VStack {
                       Spacer()
                       Text("الثعلب")
                           .foregroundColor(.title)
                           .font(.system(size: 36))
                           .fontWeight(.bold)
                           .position(x: 410, y: 400)
                   }
                   HStack {
                           Text("قريبًا من مكةَ المكرّمةِ يقع ")
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                               .font(.system(size: 24))
                               .fontWeight(.medium)
                               .lineSpacing(25)
                               .position(x: 570, y:500)
                       Button("جبل") {
                           
                       }

                       
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                               .fontWeight(.medium)
                               .lineSpacing(25)
                               .position(x: 125, y:500)
                               .tint(.redc)
                       
                       Text(" صغيرٌ يُعرفُ بقرنِ الثعالبِ،")
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                               .fontWeight(.medium)
                               
                               .position(x: -305, y:500)
                   }
                   HStack {
                       Text("وذلك لكثرة ما")
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                           .fontWeight(.medium)
                       
                           .position(x: 580, y:505)
                       Button("تأوي") {
                           
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
                       .position(x: 105, y:505)
                       .tint(.redc)
                   }
                   .padding(50)
                     
                   HStack {
                       Text(" إليهِ الثعالبُ، وكانَ هناكَ ثعلبٌ " )
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                               .fontWeight(.medium)
                               
                               .position(x: 340, y:555)
                       
                   }
                   
                   HStack {
                       Text("كان هذا الثعلبٌ لا يملكُ ذيلًا ")
                           .multilineTextAlignment(.trailing)
                           .font(.custom( "Ithra", size: 24))
                           .fontWeight(.medium)
                           .position(x: 550, y:670)
                       
                       
                       Button("الثعالبَ") {
                           
                           /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                       }
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
              .position(x: -215, y:670)
                       .tint(.redc)
                       
                       
                   }
                     
                   Text("كان هذا الثعلبٌ لا يملكُ ذيلًا ")
                       .multilineTextAlignment(.trailing)
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
                       .position(x: 550, y:670)
                   
                   Text(" معَ والديهِ ومجموعةً منَ الثعالبِ في تلكَ المنطقة.")
                       .multilineTextAlignment(.trailing)
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
                       .position(x: 445, y:610)
                   
                   Text("طويلًا كباقي ")
                       .multilineTextAlignment(.trailing)
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
                       .position(x: 320, y:670)
                   
                  
                   
                   
                   
                   Text("وذلك لأن ذيلهُ قد تعرضَ للقطعِ بالكامل بواسطةِ فخٍ \n حديديٍ قدْ تمّ نصبهُ من قبل أحدِ صيادي الثعالب عند الجبل. ")
                       .font(.custom( "Ithra", size: 24))
                       .fontWeight(.medium)
                       .lineSpacing(15)
                       .multilineTextAlignment(.trailing)
                       .position(x: 420, y:750)
                   
                   
                   
                   Image("alert")
                       .frame(width: 20, height: 20)
                       .position(x: 710, y:930)
                   Text(" قم بالنقر على الكلمة حتى يظهر لك معناها")
                       .font(.custom( "Ithra", size: 18))
                       .fontWeight(.bold)
                       .position(x: 510, y:930)
                   Image("arrowl")
                       .resizable()
                                 .frame(width: 70, height: 70)
                       .position(x: 600, y:1050)
                   
                   Image("arrowr")
                       .resizable()
                                 .frame(width: 70, height: 70)
                       .position(x: 250, y:1050)
                   Text("الصفحة السابقة")
                       .position(x: 600, y:1120)
                       .font(.system(size: 18))
                   Text("الصفحة التالية")
                       .position(x: 250, y:1120)
                       .font(.system(size: 18))
                   
               }
              
               
           }
           
       }

       extension Color {
           init(hex: UInt) {
               self.init(
                   .sRGB,
                   red: Double((hex >> 16) & 0xFF) / 255.0,
                   green: Double((hex >> 8) & 0xFF) / 255.0,
                   blue: Double(hex & 0xFF) / 255.0,
                   opacity: 1.0
               )
           }

       }



#Preview {
    reading()
}
