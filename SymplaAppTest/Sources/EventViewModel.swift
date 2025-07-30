//
//  File.swift
//  SymplaAppTest
//
//  Created by Gabriel Aragao on 24/07/25.
//

import Foundation

class EventViewModel: ObservableObject {
    var network = Networking()
    var eventResult: [EventDTO] = []
    
    func fetchEvent(completion: () -> Void) {
        network.getEvents { [weak self] result in
            switch result {
            case let .success(event):
                self?.eventResult = event.data
            case let .failure(error):
                print(error.localizedDescription)
            }
        }
    }
}
                    
