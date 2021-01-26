import SwiftUI

struct BlurView: NSViewRepresentable {
    
    var material: NSVisualEffectView.Material
    var blendingMode: NSVisualEffectView.BlendingMode

    func makeNSView(context: Context) -> NSVisualEffectView
    {
        let visualEffectView = NSVisualEffectView()
        visualEffectView.material = material
        visualEffectView.blendingMode = blendingMode
        visualEffectView.state = NSVisualEffectView.State.active
        return visualEffectView
    }

    func updateNSView(_ visualEffectView: NSVisualEffectView, context: Context) {
        visualEffectView.material = material
        visualEffectView.blendingMode = blendingMode
    }
}

struct CardmacOS: View {
    @State var back = false
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
        .frame(minWidth: 350, maxWidth: 350)
        .background(BlurView(material: NSVisualEffectView.Material.menu, blendingMode: NSVisualEffectView.BlendingMode.withinWindow))
        .cornerRadius(20)
        .shadow(radius: 5)
        .padding()
        .onTapGesture {
            withAnimation {
                back.toggle()
            }
            
        }
        .rotation3DEffect(.degrees(back ? 180 : 0), axis: (x: 0, y: 1, z: 0))
    }
}
