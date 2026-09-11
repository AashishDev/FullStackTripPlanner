//
//  AppRouter.swift
//  TripPlanner
//
//  Created by Aashish Tyagi on 7/8/26.
//

import SwiftUI

@Observable
@MainActor
final class AppRouter {

    var path = NavigationPath()

    func navigate(to destination: Destination) {
        path.append(destination)
    }

    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func popToRoot() {
        path.removeLast(path.count)
    }
}

enum Destination: Hashable {
    case tripDetail(Trip)
}
