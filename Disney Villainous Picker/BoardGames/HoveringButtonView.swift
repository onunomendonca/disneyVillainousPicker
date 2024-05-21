//
//  HoveringButtonView.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import SwiftUI

struct HoveringButtonView: View {

    let text: String
    let backgroundImage: String

    var body: some View {

        VStack {
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    print("Next button tapped")
                }) {
                    ZStack{

                        Image(self.backgroundImage, bundle: nil)
                            .resizable()
                            .scaledToFit()

                        Image(systemName: self.text)
                    }
                    .font(.largeTitle)
                    .frame(width: 60, height: 60)
                    .foregroundColor(.hexStringToUIColor(hex: "d8b57d"))
                    .clipShape(Circle())
                }
                .shadow(color: .black, radius: 7)
                .padding()
                .hoverEffect(.lift)
            }
        }
    }
}

#Preview {
    HoveringButtonView(text: "chevron.forward",
                       backgroundImage: "backgroundHoveringButton")
}
