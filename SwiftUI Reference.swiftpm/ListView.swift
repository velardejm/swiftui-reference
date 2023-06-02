//
//  ListView.swift
//  SwiftUI Reference
//
//  Created by JM Velarde on 6/2/23.
//

//WAYS TO USE List View

import SwiftUI

struct ListView: View {
    let numArr = ["One", "Two", "Three"]
    
    var body: some View {
        
        List {
            Group {
                Section {
                    Text("Text 1")
                    Text("Text 2")
                    Text("Text 3")
                    
                } header: {
                    Text("Static")
                }
                
                Section {
                    ForEach(1..<9) {
                        Text("Text: \($0)")
                    }
                } header: {
                    Text("Using ForEach")
                }
                
                Section {
                    Text("This cannot be used under another list")
                    List(1..<5) {
                        Text("Dynamic Row \($0)")
                    }
                } header: {
                    Text("Passing range to List(range)")
                }
            }.textCase(nil)
        }
        
//        DYNAMIC ROWS
        List(1..<5) {
            Text("Dynamic Row \($0)")
        }.navigationTitle("Test")
        
        
//        USING ARRAYS
        List(numArr, id: \.self) {
            Text("\($0)")
        }
        
        
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}



