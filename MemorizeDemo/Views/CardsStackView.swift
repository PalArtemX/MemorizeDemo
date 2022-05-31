//
//  CardsStackView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 31/05/2022.
//

import SwiftUI

struct CardsStackView: View {
    @EnvironmentObject var vm: MemoryGameVM
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(vm.memoryGame.cards) { card in
                    CardView(card: card)
                        .onTapGesture {
                            withAnimation(.default) {
                                vm.choose(card)
                            }
                            
                        }
                }
            }
        }
        .padding()
    }
}

struct CardsStackView_Previews: PreviewProvider {
    static var previews: some View {
        CardsStackView()
            .environmentObject(MemoryGameVM())
    }
}
