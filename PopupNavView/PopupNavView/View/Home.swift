//
//  Home.swift
//  PopupNavView
//
//  Created by Danil Peregorodiev on 17.02.2022.
//

import SwiftUI

struct Home: View {
    @State var showPopup: Bool = false
    var body: some View {
        NavigationView {
            Button("Show Popup") {
                withAnimation{
                    showPopup.toggle()
                }
            }
            .navigationTitle("Custom PopUp")
        }
        .popupNavigationView(show: $showPopup) {
            List{
                ForEach(tasks) {task in
                    NavigationLink(task.taskTitle) {
                        Text(task.taskDescription)
                            .navigationTitle("Destination")
                    }
                }
            }
            .navigationTitle("PopUp Navigation")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Close") {
                        withAnimation {showPopup.toggle()}
                    }
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
