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
            
            ButtonsView()
        }
    }
}










struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(MemoryGameVM())
    }
}
