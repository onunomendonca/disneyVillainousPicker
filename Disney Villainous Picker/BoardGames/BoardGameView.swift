//
//  BoardGameView.swift
//  Disney Villainous Picker
//
//  Created by Nuno Mendonça on 21/05/2024.
//

import SwiftUI

struct BoardGameView: View {

    @StateObject var viewModel = BoardGameViewModel()

    var body: some View {

        NavigationStack {
            ZStack {
                Image("background", bundle: nil)
                    .resizable()
                    .ignoresSafeArea()
                    .opacity(0.1)

                VStack {

                    Text("Game Box Picker")
                        .font(.custom("PirataOne-Regular", size: 40))
                        .padding(.vertical, 3)

                    Text("Select the Game Boxes you wish to include on this Picker.")
                        .font(.custom("Esteban-Regular", size: 18))
                        .padding(.bottom, 7)
                        .padding(.top, 0)
                        .multilineTextAlignment(.center)

                    List(self.$viewModel.allGames) { $game in
                        Image(game.name.camelCased(), bundle: nil)
                            .resizable()
                            .scaledToFill()
                            .listRowBackground(Color.clear)
                            .listRowSeparator(.hidden)
                            .listRowInsets(EdgeInsets())
                            .grayscale(game.selected ? 0.0 : 1.0)
                            .onTapGesture {
                                game.selected.toggle()
                            }
                    }
                    .foregroundStyle(.clear)
                    .listStyle(.plain)
                    .padding(.horizontal, 7)
                }

                if self.viewModel.isAtLeastOneGameBoxSelected() {

                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink(
                                destination: VillainsPicker(selectedGames: self.viewModel.selectedGames),
                                label: {
                                    Image(systemName: "chevron.forward")
                                        .font(.largeTitle)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.hexStringToUIColor(hex: "d8b57d"))
                                        .background(
                                            Image("backgroundHoveringButton")
                                                .resizable()
                                                .scaledToFit()
                                        )
                                        .clipShape(Circle())
                                        .shadow(color: .black, radius: 4)
                                        .padding()
                                        .hoverEffect(.lift)
                                }
                            )
                            .buttonStyle(PlainButtonStyle())
                        }
                    }
                }

            }
        }
    }
}

#Preview {
    BoardGameView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
