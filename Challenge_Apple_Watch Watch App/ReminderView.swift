//
//  ReminderView.swift
//  Challenge_Apple_Watch Watch App
//
//  Created by Dessana Santos on 11/11/22.
//

import SwiftUI
import WatchKit

struct ReminderView: View {

    var items = ["Café da Manhã", "Almoço", "Janta"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("Defina um horário para as suas refeições.")
                        .font(.system(size: 14.0))
                        .padding(.bottom, 5.0)
                    // List {
                    ForEach(items, id: \.self) { item in
                        HStack {
                            NavigationLink(destination: TesteView()) {
                                VStack(alignment: .leading) {
                                    Image("Lunch") .resizable().aspectRatio(contentMode: .fill)
                                        .padding(.leading, -5.0)
                                        .frame(width: 25.0, height: 25.0)
                                }
                                VStack(alignment: .leading){
                                    HStack {
                                        Text("\(item)")
                                            .font(.system(size: 16.0))
                                        Spacer()
                                    }
                                    
                                    HStack {
                                        Text("7:30")
                                            .font(.system(size: 16.0))
                                            .foregroundColor(Color.gray)
                                    }
                                }
                                .padding(.leading, 5.0)
                                .padding(.vertical, -5)
                            }
                        }
                        //                            .padding(.horizontal, 1.0)
                        .padding(.bottom, 3)
                    }
                }
            }
            
        }
    }
}
// }

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
