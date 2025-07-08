//
//  SwiftUIView.swift
//  SharedUI+Extention
//
//  Created by MohammadHossan on 08/07/2025.
//
import SwiftUI
import RepositoryModule

// MARK: - ProfileHeaderView
public struct ProfileHeaderView: View {
  public let feedElement: FeedElement
  public let profileImageSize: CGFloat
  public var onProfileTap: (() -> Void)? = nil
  
  public init(feedElement: FeedElement, profileImageSize: CGFloat, onProfileTap: (() -> Void)? = nil) {
    self.feedElement = feedElement
    self.profileImageSize = profileImageSize
    self.onProfileTap = onProfileTap
  }
  
  public var body: some View {
    HStack {
      if let urlString = feedElement.user?.profileImage.large ?? feedElement.user?.profileImage.medium,
         let url = URL(string: urlString) {
        
        FeedAsyncImageView(url: url)
          .scaledToFill()
          .frame(width: profileImageSize, height: profileImageSize)
          .clipShape(Circle())
        
      } else {
        Image(systemName: "person.circle.fill")
          .resizable()
          .frame(width: profileImageSize, height: profileImageSize)
          .foregroundColor(.gray)
      }
      
      Text(feedElement.user?.instagramUsername ?? "Unknown user")
        .font(.footnote)
        .fontWeight(.semibold)
      
      Spacer()
    }
  }
}

#Preview {
  ProfileHeaderView(feedElement: .mock, profileImageSize: 150)
}
