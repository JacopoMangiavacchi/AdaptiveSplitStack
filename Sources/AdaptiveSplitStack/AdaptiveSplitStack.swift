//
//  AdaptiveSplitStack.swift
//
//  Created by Jacopo Mangiavacchi on 2/7/21.
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, *)
public struct AdaptiveSplitStack<Content1: View, Background1: View, Content2: View, Background2: View>: View {
    let horizontalAlignment: HorizontalAlignment
    let verticalAlignment: VerticalAlignment
    let spacing: CGFloat?
    let content1: () -> Content1
    let content2: () -> Content2
    let background1: () -> Background1
    let background2: () -> Background2
    let ratio: CGFloat

    
    public init(horizontalAlignment: HorizontalAlignment = .center,
         verticalAlignment: VerticalAlignment = .center,
         spacing: CGFloat? = nil,
         ratio: CGFloat = 0.5,
         @ViewBuilder content1: @escaping () -> Content1,
         @ViewBuilder background1: @escaping () -> Background1,
         @ViewBuilder content2: @escaping () -> Content2,
         @ViewBuilder background2: @escaping () -> Background2
    ) {
        self.horizontalAlignment = horizontalAlignment
        self.verticalAlignment = verticalAlignment
        self.spacing = spacing
        self.ratio = ratio
        self.content1 = content1
        self.content2 = content2
        self.background1 = background1
        self.background2 = background2
    }

    public var body: some View {
        GeometryReader { geometry in
            if geometry.size.height > geometry.size.width {
                VStack(alignment: horizontalAlignment, spacing: spacing, content: {
                    content1()
                        .frame(width: geometry.size.width, height: geometry.size.height * ratio)
                        .background(background1())
                    content2()
                        .frame(width: geometry.size.width, height: geometry.size.height - (geometry.size.height * ratio))
                        .background(background2())
                })
            } else {
                HStack(alignment: verticalAlignment, spacing: spacing, content: {
                    content1()
                        .frame(width: geometry.size.width * ratio, height: geometry.size.height)
                        .background(background1())
                    content2()
                        .frame(width: geometry.size.width - (geometry.size.width * ratio), height: geometry.size.height)
                        .background(background2())
                })
            }
        }
    }
}
