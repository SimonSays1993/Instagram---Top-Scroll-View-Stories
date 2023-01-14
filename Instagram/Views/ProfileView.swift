import SwiftUI

struct ProfileView: View {
    var image: String
    var name: String
    
    var body: some View {
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                // Create the gradient circle around the circular profile
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange],
                                           startPoint: .topLeading,
                                           endPoint: .bottomTrailing), lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            // Here we increased are frame to not have the top of the circles be cut off by the top safe area of the device
            .frame(width: 70, height: 70)
            
            Text(name)
                .font(.caption)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(image: "profile", name: "Simon McNeil")
    }
}
