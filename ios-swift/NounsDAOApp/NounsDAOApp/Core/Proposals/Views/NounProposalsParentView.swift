//
//  NounProposalsParentView.swift
//  NounsDAOApp
//
//  Created by PAVEL on 2023/08/28.
//

import SwiftUI
struct NounProposalsParentView: View {
    @State private var selectedTabIndex: Int = 0
    @Namespace private var animation
    
    var body: some View {
        ZStack {
            CirclesBlurBackground()
            VStack {
                VStack {
                    HStack {
                        Text("Proposals")
                            .padding(.horizontal, 3)
                            .padding(.vertical, 1)
                            .background(selectedTabIndex == 0 ? Color.black : Color.clear)
                            .foregroundColor(selectedTabIndex == 0 ? .white : .black)
                            .clipShape(RectangleCapsuleClipShape())
                            .onTapGesture {
                                withAnimation {
                                    selectedTabIndex = 0
                                }
                            }
                        Text("Candidates")
                            .padding(.horizontal, 3)
                            .padding(.vertical, 1)
                            .background(selectedTabIndex == 1 ? Color.black : Color.clear)
                            .foregroundColor(selectedTabIndex == 1 ? .white : .black)
                            .clipShape(RectangleCapsuleClipShape())
                            .onTapGesture {
                                withAnimation {
                                    selectedTabIndex = 1
                                }
                            }
                    }
                    .padding(.horizontal)
                }
                .onChange(of: selectedTabIndex) { newValue in

                }
                TabView(selection: $selectedTabIndex) {
                    NounProposalsView()
                        .tag(0)
                    NounProposalsCandidatesView()
                        .tag(1)
                }
                .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            }
        }
    }
}

struct NounProposalsParentView_Previews: PreviewProvider {
    static var previews: some View {
        NounProposalsParentView()
    }
}
