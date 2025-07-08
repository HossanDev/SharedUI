//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI

// MARK: - CaptionView
public struct CaptionView: View {
  public let caption: String?
  
  public init(caption: String?) {
    self.caption = caption
  }
  
  public var body: some View {
    if let caption = caption, !caption.isEmpty {
      Text(caption)
        .font(.footnote)
        .fontWeight(.semibold)
    } else {
      EmptyView()
    }
  }
}


#Preview {
  CaptionView(caption: " This is test message")
}
