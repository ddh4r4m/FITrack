//
//  WeekDaysView.swift
//  FITrack
//
//  Created by Dharam Dhurandhar on 30/12/23.
//

import SwiftUI

#Preview {
    WeekdaysView()
}


struct WeekdaysView: View {
    let weekdaysAbbreviationsDef = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]
    let weekdaysAbbreviations = ["Sun", "Mon", "Thu", "Fri", "Sat"]

    var body: some View {
        HStack {
            // Rectangular view with rounded corners
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(Color.black).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .frame(height: 100)
                .overlay(
                    HStack {
                        VStack(alignment: .leading) {
                            Text("This Week").foregroundStyle(.white).customFont()
                            HStack(spacing: 0) {
                                    ForEach(Array(weekdaysAbbreviations.enumerated()), id: \.element) { index, day in
                                    // Circular views for each day
                                    Circle()
                                            .foregroundColor(index%2==0 ? Color.white : Color.green)
                                        .frame(width: 24, height: 24)
                                        .overlay(
                                            Text(day.prefix(1))
                                                .foregroundColor(index%2==0 ? Color.black : Color.white)
                                                .customFont()
                                        )
                                        .padding(4)
                                }
                            }
                        }
                        Spacer()
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 100, height: 60)
                            .foregroundStyle(.green)
                            .overlay {
                                HStack {
                                    Image(systemName: "checkmark.diamond")
                                    Text("Done").customFont()
                                }
                            }
                    }.padding()
                )
            
            // Button on the trailing side
//            Button(action: {
//                // Add your button action here
//                print("Button tapped!")
//            }) {
//                Image(systemName: "plus.circle.fill")
//                    .font(.system(size: 30))
//                    .foregroundColor(Color.blue)
//            }
//            .padding(.trailing, 10)
        }
        .padding(20)
    }
}
