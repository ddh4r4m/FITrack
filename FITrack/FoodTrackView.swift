//
//  FoodTrackView.swift
//  FITrack
//
//  Created by Dharam Dhurandhar on 29/12/23.
//

import SwiftUI

struct FoodTrackView: View {
    var body: some View {
        ZStack {
            AsyncImage(url: URL(string: "https://images.immediate.co.uk/production/volatile/sites/30/2023/03/Coriander-juice-b2b9436.jpg?quality=90&resize=556,505")) { image in
                image.image?.resizable().scaledToFill().ignoresSafeArea()
            }.frame(width: .infinity, height: .infinity)
                .background(.red)
            VStack {
                Text("Cucumber")
                    .customFont()

                Text("Zumo")
                    .customFont(nil, 33)

                HStack {
                    Text("39")
                        .customFont(nil, 128)

                    VStack {
                        Text("KCAL")
                        Text("CALORIES")
                    }
                }
                Spacer()
            }
        }
    }
}


#Preview {
    FoodTrackView()
}
