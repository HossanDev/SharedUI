//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI

public struct FeedAsyncImageView: View {
  let url: URL
  var height: CGFloat?
  var width: CGFloat?
  
  public init(url: URL, height: CGFloat? = nil, width: CGFloat? = nil) {
    self.url = url
    self.height = height
    self.width = width
  }
  
  
  public var body: some View {
    CacheAsyncImage(url: url) { phase in
      switch phase {
      case .success(let image):
        image
          .resizable()
          .scaledToFill()
          .frame(width: width, height: height ?? 250)
          .frame(maxWidth: width == nil ? .infinity : nil)
          .clipped()
        
      case .failure:
        Image(systemName: "camera.fill")
          .resizable()
          .scaledToFit()
          .frame(width: width ?? 100, height: height ?? 250)
          .foregroundColor(.gray)
          .background(Color.gray.opacity(0.1))
          .clipped()
        
      case .empty:
        ZStack {
          Color.gray.opacity(0.1)
          ProgressView()
        }
        .frame(width: width, height: height ?? 250)
        .frame(maxWidth: width == nil ? .infinity : nil)
        
      @unknown default:
        Image(systemName: "camera.fill")
          .resizable()
          .scaledToFit()
          .frame(width: width ?? 100, height: height ?? 250)
          .foregroundColor(.gray)
          .background(Color.gray.opacity(0.1))
          .clipped()
      }
    }
    .cornerRadius(12)
  }
}


