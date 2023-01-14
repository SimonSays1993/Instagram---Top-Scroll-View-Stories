import SwiftUI

struct ContentView: View {
    var body: some View {
        // This VStack will act as the main container
        VStack(spacing: 0.0) {
            Header()
            StoryCarousel()
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

