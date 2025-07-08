//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI

// MARK: - LikesView
public struct LikesView: View {
  public let likes: Int
  
  public init(likes: Int) {
    self.likes = likes
  }
  
  public var body: some View {
    Text("\(likes) likes")
      .font(.footnote)
      .fontWeight(.semibold)
  }
}

#Preview {
  LikesView(likes: 25)
}
