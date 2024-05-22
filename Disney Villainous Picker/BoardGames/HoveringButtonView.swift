//
//  HoveringButtonView.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import SwiftUI

enum ButtonPosition {

    case center
    case left
    case right
}

struct HoveringButtonView: View {

    let text: String
    let backgroundImage: String
    let alignment: ButtonPosition
    let action: () -> Void

    var body: some View {

        VStack {
            Spacer()
            HStack {
                if self.alignment == .center || self.alignment == .right {
                    Spacer()
                }
                Button(action: action) {
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
                if self.alignment == .center || self.alignment == .left {
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    HoveringButtonView(text: "chevron.forward",
                       backgroundImage: "backgroundHoveringButton",
                       alignment: .left,
                       action: {print("Button Tapped!")})
}
