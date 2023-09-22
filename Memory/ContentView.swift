//
//  ContentView.swift
//  Memory
//
//  Created by Samuel Gottfarb on 2023-09-22.
//

import SwiftUI

struct ContentView: View {
    let cards: [String]
    let spacing: CGFloat
    init(
        cards: [String] = ["💩", "🥳", "💄", "💍", "🍔", "🥑", "🤺", "🚀"],
        spacing: CGFloat = 20
    ) {
        self.cards = cards + cards
        self.spacing = spacing
    }
    
    var body: some View {
        GeometryReader { geometry in
           
            
            let columns = (0..<4).map { _ in
                GridItem(.flexible(minimum: 50, maximum: .infinity), spacing: spacing)
            }
            
            LazyVGrid(
                columns: columns,
                spacing: spacing,
                content: {
                    ForEach(cards, id: \.self) { card in
                        Button(card) {
                            print("Tapped: \(card)")
                        }
                        .font(.largeTitle)
                        .aspectRatio(1.0, contentMode: .fill)
                        .frame(
                            maxWidth: .infinity,
                            minHeight: (geometry.size.height * 0.8) / (CGFloat(cards.count) / CGFloat(columns.count))
                        )
                        .background(Color.gray.opacity(0.5))
                        .border(Color.black)
                    }
                }
            )
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
