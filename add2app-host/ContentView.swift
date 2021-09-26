//
//  ContentView.swift
//  add2app-host
//
//  Created by ShinyaSakemoto on 2021/09/23.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented = false

    var body: some View {
        VStack {
            Text("Go to Flutter")
                .padding()
                .onTapGesture {
                    isPresented.toggle()
                }
                .fullScreenCover(
                    isPresented: $isPresented, content: {
                        FlutterView()
                    }
                )
        }
    }
}

struct FlutterView: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        NavigationView {
            FlutterViewControllerWrapper()
                .navigationTitle("Flutter")
                .toolbar {
                    ToolbarItem(placement:
                                    .navigationBarLeading) {
                        Button("Close Flutter") {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
