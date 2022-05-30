//
//  HomeView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: MemoryGameViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]) {
                ForEach(vm.memoryGame.cards) { card in
                    CardView(card: card)
                        .onTapGesture {
                            vm.choose(card)
                        }
                        .aspectRatio(2/3, contentMode: .fit)
                }
            }
        }
        .padding()
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MemoryGameViewModel())
    }
}
