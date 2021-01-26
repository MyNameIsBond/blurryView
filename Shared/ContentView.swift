
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
    
    var macOS: some View {
        ZStack(alignment: .center) {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
            Color.teal.frame(width: 50, height: 200).ignoresSafeArea()
            Color.red.opacity(0.3).frame(width:  200, height: 200 ).ignoresSafeArea()
            BlurView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.withinWindow)
            CardmacOS()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//MARK: Blur Effect

