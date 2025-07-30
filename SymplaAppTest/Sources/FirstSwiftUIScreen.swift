//
//  FirstSwiftUIScreen.swift
//  SymplaAppTest
//
//  Created by Gabriel Aragao on 24/07/25.
//

import SwiftUI

struct FirstSwiftUIScreen: View {
    @ObservedObject var eventViewModel: EventViewModel = EventViewModel()
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .onAppear{
                eventViewModel.fetchEvent{
                    
                }
            }
    }
}
