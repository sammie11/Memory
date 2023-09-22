//
//  ContentView.swift
//  Memory
//
//  Created by Samuel Gottfarb on 2023-09-22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "paperplane")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundStyle(.red)
            Text("Hello, europe!")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
