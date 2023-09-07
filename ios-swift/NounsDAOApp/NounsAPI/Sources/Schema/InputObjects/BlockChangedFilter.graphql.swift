// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct BlockChangedFilter: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    number_gte: Int
  ) {
    __data = InputDict([
      "number_gte": number_gte
    ])
  }

  public var number_gte: Int {
    get { __data["number_gte"] }
    set { __data["number_gte"] = newValue }
  }
}
