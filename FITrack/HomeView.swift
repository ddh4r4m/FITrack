//
//  HomeView.swift
//  FITrack
//
//  Created by Dharam Dhurandhar on 29/12/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                AsyncImage(url: URL.init(string: "https://pbs.twimg.com/profile_images/562113774878871554/V41UIHIe_400x400.jpeg"))
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 120)
                    .clipShape(.buttonBorder)
                    .padding(.trailing, 10)
                
                VStack(alignment: .leading) {
                    Text("Hello again!").customFont(.light)
                    Text("Dharma").customFont(nil,34)
                    Text("FITNESS TRACKER").customFont(.light)
                }
            }
            Spacer()
            VStack {
                Text("THIS WEEK").customFont(.regular)
                HStack {
                    Image(uiImage: UIImage(systemName: "arrowtriangle.left.fill")!)
                        .imageScale(.large)
                        .padding()
                    Text("256")
                        .font(.customFont(.light,128))
                    Image(uiImage:
                            UIImage(systemName: "arrowtriangle.right.fill")!
                    ).imageScale(.large)
                        .padding()
                }
                Text("KCAL").font(Font.custom("Outfit-Thin_SemiBold", size: 24))
                Text("CALORIES")
            }
            
            Spacer()
        }.padding(.top, 80)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Gradient(colors: [.clear, .orange]))
        
    }
}

#Preview {
    HomeView()
}
