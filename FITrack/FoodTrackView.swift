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
            VStack {
                AsyncImage(url: URL(string: "https://images.immediate.co.uk/production/volatile/sites/30/2023/03/Coriander-juice-b2b9436.jpg?quality=90&resize=556,505")) { image in
                                    image.image?.resizable().scaledToFill().ignoresSafeArea()
                }.frame(width: 80, height: 780)
            }
            VStack(alignment: .leading) {
                HStack {
                    Circle().frame(width: 64, height: 64)
                    Spacer()
                    Circle().frame(width: 64, height: 64)
                }.padding().foregroundStyle(.gray)
                HStack{
                    ExtractedView()
                    Spacer()
                }.padding(.leading, 24)
                HStack(alignment: .lastTextBaseline) {
                    Text("39")
                        .customFont(nil, 128)

                    VStack(alignment: .leading) {
                        Text("KCAL")
                        Text("CALORIES")
                    }
                }.padding(.leading,24)
                Spacer()
                WeekdaysView().padding()
            }.padding(.top, 20)
        }
    }
}


#Preview {
    FoodTrackView()
}

struct ExtractedView: View {
    var body: some View {
        VStack {
            Text("Cucumber")
                .customFont(.black)
            Text("Zumo")
                .customFont(.regular, 33).foregroundStyle(.gray)
        }
    }
}
