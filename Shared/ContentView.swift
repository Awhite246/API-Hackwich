//
//  ContentView.swift
//  Shared
//
//  Created by Student on 2/1/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView {
            List(jokes) { joke in
                NavigationLink(
                    destination: Text(joke.punchline)
                        .padding(),
                    label: {
                        Text(joke.setup)
                    })
            }
            .navigationTitle("Programming Jokes")
        }
        .onAppear {
            getJokes()
        }
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=cc6b0c5350msh5a3d7cf2c2a71fbp1bec8djsnecb6421d09a6"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup: String
    var punchline: String
}
