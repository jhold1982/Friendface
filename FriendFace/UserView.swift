//
//  UserView.swift
//  FriendFace
//
//  Created by Justin Hold on 10/19/22.
//

import SwiftUI

struct UserView: View {
    let user: CachedUser
    var body: some View {
        List {
            Section("About") {
                Text(user.wrappedAbout)
                    .padding(.vertical)
            }
            Section("Contact info") {
                Text("Address: \(user.wrappedAddress)")
                Text("Company: \(user.wrappedCompany)")
            }
            Section("Friends") {
                ForEach(user.friendsArray) { friend in
                    Text(friend.wrappedName)
                }
            }
        }
        .listStyle(.grouped)
        .navigationTitle(user.wrappedName)
        .navigationBarTitleDisplayMode(.inline)
    }
}

//struct UserView_Previews: PreviewProvider {
//	static var previews: some View {
//		UserView()
//	}
//}
