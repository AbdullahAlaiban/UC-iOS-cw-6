//
//  2ndView.swift
//  myDiary
//
//  Created by APPLE on 04/07/2022.
//

import SwiftUI

struct _ndView: View {
    @State var color = Color.white
    @State var typed = ""
    var body: some View {
        ZStack{
            color
                .ignoresSafeArea()
            Text(typed)
        }
    }
}

struct _ndView_Previews: PreviewProvider {
    static var previews: some View {
        _ndView(color: Color.white, typed: "")
    }
}
