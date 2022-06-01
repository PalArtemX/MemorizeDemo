//
//  ButtonsView.swift
//  MemorizeDemo
//
//  Created by Artem Paliutin on 01/06/2022.
//

import SwiftUI

struct ButtonsView: View {
    @EnvironmentObject var vm: MemoryGameVM
    
    var body: some View {
        HStack {
            // MARK: - Shuffle
            Button {
                withAnimation(.easeInOut) {
                    vm.shuffle()
                }
            } label: {
                Label("Shuffle", systemImage: "circle.grid.cross.right.filled")
                    .symbolRenderingMode(.hierarchical)
                    .font(.title3)
                    .foregroundColor(.green)
            }
            Spacer()
            
            // MARK: - Restart
            Button {
                withAnimation(.easeInOut) {
                    vm.restart()
                }
            } label: {
                Label("Restart", systemImage: "circle.grid.cross.right.filled")
                    .symbolRenderingMode(.hierarchical)
                    .font(.title3)
                    .foregroundColor(.red)
            }
            
            
        }
        .padding()
        .buttonStyle(.bordered)
    }
}










struct ButtonsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ButtonsView()
                .previewLayout(.sizeThatFits)
            .environmentObject(MemoryGameVM())
            ButtonsView()
                .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
                .environmentObject(MemoryGameVM())
        }
    }
}
