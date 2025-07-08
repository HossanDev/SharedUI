//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI

// MARK: - ActionButtonsView
public struct ActionButtonsView: View {
  public let spacing: CGFloat
  
  public init(spacing: CGFloat) {
    self.spacing = spacing
  }
  
  public var body: some View {
    HStack(spacing: spacing) {
      Button(action: {}) {
        Image(systemName: "heart")
          .imageScale(.large)
      }
      
      Button(action: {}) {
        Image(systemName: "bubble.right")
          .imageScale(.large)
      }
      
      Button(action: {}) {
        Image(systemName: "paperplane")
          .imageScale(.large)
      }
      
      Spacer()
    }
  }
}
#Preview {
  ActionButtonsView(spacing: 20)
}
