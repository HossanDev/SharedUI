//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI
import RepositoryModule
import ModelModule

// MARK: - FeedImageView
public struct FeedImageView: View {
  public let feedElement: FeedElement
  
  public init(feedElement: FeedElement) {
    self.feedElement = feedElement
  }
  
  public var body: some View {
    if let imageUrl = URL(string: feedElement.urls.small) {
      FeedAsyncImageView(url: imageUrl)
    } else {
      Color.gray
        .frame(height: 200)
        .overlay(
          Image(systemName: "photo")
            .foregroundColor(.white)
        )
    }
  }
}

#Preview {
  FeedImageView(feedElement: .mock)
}
