
import SwiftUI

extension Color {
    static let teal = Color(red: 13 / 255, green: 245 / 255, blue: 237  / 255)
}

struct ContentView: View {
    
    var body: some View {
        #if os(iOS)
        ios
        #else
        macOS
        #endif
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//MARK: Blur Effect
//MARK: Blur Effect

