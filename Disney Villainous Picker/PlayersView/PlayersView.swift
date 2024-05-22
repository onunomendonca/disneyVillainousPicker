//
//  PlayersView.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 22/05/2024.
//

import SwiftUI

struct PlayersView: View {

    @StateObject var viewModel = PlayersViewModel()
    @State private var showingAlert = false
    @State private var name = ""

    var body: some View {

        ZStack {

            Image("background", bundle: nil)
                .resizable()
                .ignoresSafeArea()
                .opacity(0.1)

            VStack {

                Text("Player's in Play")
                    .font(.custom("PirataOne-Regular", size: 40))
                    .padding(.vertical, 3)

                Text("Add the Players you wish to include on this Picker.")
                    .font(.custom("Esteban-Regular", size: 18))
                    .padding(.bottom, 7)
                    .padding(.top, 0)
                    .multilineTextAlignment(.center)

                List(self.viewModel.players) { player in

                    HStack {
                        Text(player.name)
                        Spacer()
                        Image(systemName: "trash.fill")
                    }
                }
                .listStyle(.insetGrouped)
                .padding(.horizontal, 7)
                .scrollContentBackground(.hidden)
            }

            HoveringButtonView(text: "person.fill.badge.plus",
                               backgroundImage: "backgroundHoveringButton", 
                               alignment: .center,
                               action: { showingAlert.toggle() })
            .alert("Enter your name", isPresented: $showingAlert) {

                TextField("Enter a Player's Name", text: self.$name)
                    .foregroundStyle(.black)

                Button("OK") {
                    self.viewModel.addPlayer(name: self.name)
                    self.name = ""
                }
            } message: {
                Text("Please write the new player's name.")
            }

            HoveringButtonView(text: "person.fill.badge.plus",
                               backgroundImage: "backgroundHoveringButton",
                               alignment: .center,
                               action: { showingAlert.toggle() })
        }
    }
}

#Preview {
    PlayersView()
        .preferredColorScheme(.dark)
}
