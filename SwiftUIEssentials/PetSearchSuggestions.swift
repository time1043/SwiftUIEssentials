//
//  PetSearchSuggestions.swift
//  SwiftUIEssentials
//
//  Created by oswin902 on 2026/11/23.
//

import SwiftUI

struct PetSearchSuggestions: View {
    @Bindable var viewModel: PetStoreViewModel

    var body: some View {
        ForEach(Pet.Kind.allCases) { kind in
            Button {
                if !viewModel.searchTokens.contains(where: { $0.kind == kind })
                {
                    viewModel.searchTokens.append(
                        PetStoreViewModel.SearchToken(kind: kind)
                    )
                }
            } label: {
                Label(kind.name, systemImage: kind.systemImage)
            }
        }
    }
}

#Preview {
    PetSearchSuggestions(viewModel: PetStoreViewModel(petStore: PetStore()))
}
