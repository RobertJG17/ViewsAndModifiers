//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Robert Guerra on 10/27/20.
//

import SwiftUI

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView: View {
    // MARK: - View Proerties
    
    var body: some View {
        GridStack(rows: 4, columns: 4) { row, column in
            Text("R\(row) C\(column)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
