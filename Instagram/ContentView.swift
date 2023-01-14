import SwiftUI

struct ContentView: View {
    var body: some View {
        // This VStack will act as the main container
        VStack(spacing: 0.0) {
            //Header()
            
            Stories()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    var image: String = ""
    var name: String = ""
    
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

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15) {
                Story(image: "profile", name: "Simon McNeil")
                Story(image: "profile1", name: "Sophie T")
                Story(image: "profile2", name: "James")
                Story(image: "profile3", name: "Sam")
                Story(image: "profile4", name: "Darren")
                Story(image: "profile5", name: "Dara")
                Story(image: "profile6", name: "Katie")
                Story(image: "profile7", name: "Pom")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}
