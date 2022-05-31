//
//  HomeView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 30/05/2022.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var vm: MemoryGameVM
    
    var body: some View {
        VStack {
            CardsStackView()
            
            Button {
                withAnimation(.easeInOut) {
                    vm.shuffle()
                }
            } label: {
                Label("Shuffle", systemImage: "shuffle.circle")
                    .symbolRenderingMode(.hierarchical)
                    .font(.headline)
            }
            .buttonStyle(.bordered)

        }
        .padding()
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MemoryGameVM())
    }
}
