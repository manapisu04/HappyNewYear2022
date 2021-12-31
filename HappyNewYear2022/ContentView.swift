//
//  ContentView.swift
//  HappyNewYear2022
//
//  Created by cmStudent on 2021/12/31.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    var body: some View {
        Text(viewModel.message)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
