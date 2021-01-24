
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        #if os(iOS)
        ios
        #else
        macOS
        #endif
    }
    
    var ios: some View {
        ZStack {
            ZStack(alignment: .trailing) {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
                Color.green.frame(width: 50, height: UIScreen.main.bounds.height - 20).ignoresSafeArea()
                BlurView(style: .prominent).frame(width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height ).ignoresSafeArea()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            
        }
       
    }
    
    var macOS: some View {
    ZStack(alignment: .trailing) {
    LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
    Color.green.frame(width: 50, height: 200).ignoresSafeArea()
    Color.red.opacity(0.3).frame(width:  200, height: 200 ).ignoresSafeArea()
    }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


//MARK: Blur Effect
struct BlurView: UIViewRepresentable {
    
    let style: UIBlurEffect.Style

    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: .zero)
        view.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        NSLayoutConstraint.activate([
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor),
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
        ])
        return view
    }

    func updateUIView(_ uiView: UIView,
                      context: UIViewRepresentableContext<BlurView>) {

    }

}
