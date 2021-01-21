
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        GeometryReader { g in
            ZStack(alignment: .trailing) {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
                Color.green.frame(width: 50, height: UIScreen.main.bounds.height - 20).ignoresSafeArea()
                Color.red.opacity(0.3).frame(width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height ).ignoresSafeArea()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    var ios: View {
    
    ZStack(alignment: .trailing) {
    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
    Color.green.frame(width: 50, height: UIScreen.main.bounds.height - 20).ignoresSafeArea()
    Color.red.opacity(0.3).frame(width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height ).ignoresSafeArea()
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
