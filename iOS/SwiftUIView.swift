//
//  SwiftUIView.swift
//  BlurryView (iOS)
//
//  Created by Tony Hajdini on 26/01/2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

var ios: some View {
    HStack(alignment: .center) {
        ZStack {
            ZStack(alignment: .trailing) {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing).ignoresSafeArea().frame(maxWidth: .infinity, maxHeight: .infinity)
                Color.teal.frame(width: 50, height: UIScreen.main.bounds.height - 20).ignoresSafeArea()
                BlurView(style: .regular).frame(width:  UIScreen.main.bounds.width, height: UIScreen.main.bounds.height ).ignoresSafeArea()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
            Card()
        }
    }
}



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

struct Card: View {
    var body: some View {
        VStack(alignment:.leading, spacing: 0) {
            HStack{
                Image(systemName: "applelogo").font(.largeTitle)
                Text("Apple Card")
            }.padding(20).lineSpacing(2).padding(.bottom)
            Text("5612 2536 1245 5698")
                .fontWeight(.medium)
                .tracking(4)
                .padding([.top,.leading])
            HStack {
                Text("1234").font(.caption).fontWeight(.light)
                Spacer()
                VStack {
                    Text("VALID").fontWeight(.thin).font(.system(size: 8))
                    Text("THRU").fontWeight(.thin).font(.system(size: 8))
                }
                Text("12/21")
                Spacer()
            }.padding(.leading).padding([.top, .bottom], 10)
            Text("Mr Tony").tracking(0.5).padding(.leading).padding(.bottom, 25)
        }
        .background(BlurView(style: .regular))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
