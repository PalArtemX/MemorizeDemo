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
                .padding()
            
            Button {
                withAnimation(.easeInOut) {
                    vm.shuffle()
                }
            } label: {
                Label("Shuffle", systemImage: "circle.grid.cross.right.filled")
                    .symbolRenderingMode(.hierarchical)
                    .font(.title3)
                    .foregroundColor(.orange)
            }
            .buttonStyle(.bordered)

        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MemoryGameVM())
    }
}
