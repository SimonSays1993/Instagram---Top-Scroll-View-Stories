import SwiftUI

struct StoryCarousel: View {
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
                Story(image: "profile", name: "Simon McNeil")
            }
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
