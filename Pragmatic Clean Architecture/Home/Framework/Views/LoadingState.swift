//
//  LoadingState.swift
//  Pragmatic Clean Architecture
//
//  Created by Petros Efthymiou on 17/02/2022.
//

import Foundation

import Foundation
import SwiftUI

struct LoadingState : View {
    
    var body: some View {
        VStack {
            ProgressView().padding(.bottom)
            Text("Loading...")
        }
    }
}
