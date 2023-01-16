import SwiftUI

struct StoryCarousel: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 15) {
                ProfileView(image: "profile", name: "Simon McNeil")
                ProfileView(image: "profile1", name: "Sophie T")
                ProfileView(image: "profile2", name: "James")
                ProfileView(image: "profile3", name: "Sam")
                ProfileView(image: "profile4", name: "Darren")
                ProfileView(image: "profile5", name: "Dara")
                ProfileView(image: "profile6", name: "Katie")
                ProfileView(image: "profile7", name: "Pom")
                ProfileView(image: "profile", name: "Simon McNeil")
            }
            // Need this or else the HStack will take up whole screen. Only needed when using Lazy
            .fixedSize()
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct StoryCarousel_Previews: PreviewProvider {
    static var previews: some View {
        StoryCarousel()
    }
}
