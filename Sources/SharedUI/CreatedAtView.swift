//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//

import SwiftUI

// MARK: - CreatedAtView
public struct CreatedAtView: View {
  public let dateString: String
  
  public init(dateString: String) {
    self.dateString = dateString
  }
  
  public var body: some View {
    Text("Created at: \(dateString.toYearMonth())")
      .font(.footnote)
      .foregroundStyle(.gray)
  }
}

#Preview {
  CreatedAtView(dateString: "2024/06")
}
