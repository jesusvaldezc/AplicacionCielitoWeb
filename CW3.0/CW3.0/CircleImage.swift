import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("Banner")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            
    }
}

struct CircleImage_Preview: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
