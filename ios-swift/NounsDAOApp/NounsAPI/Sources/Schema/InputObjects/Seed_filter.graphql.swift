// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

public struct Seed_filter: InputObject {
  public private(set) var __data: InputDict

  public init(_ data: InputDict) {
    __data = data
  }

  public init(
    id: GraphQLNullable<ID> = nil,
    id_not: GraphQLNullable<ID> = nil,
    id_gt: GraphQLNullable<ID> = nil,
    id_lt: GraphQLNullable<ID> = nil,
    id_gte: GraphQLNullable<ID> = nil,
    id_lte: GraphQLNullable<ID> = nil,
    id_in: GraphQLNullable<[ID]> = nil,
    id_not_in: GraphQLNullable<[ID]> = nil,
    background: GraphQLNullable<BigInt> = nil,
    background_not: GraphQLNullable<BigInt> = nil,
    background_gt: GraphQLNullable<BigInt> = nil,
    background_lt: GraphQLNullable<BigInt> = nil,
    background_gte: GraphQLNullable<BigInt> = nil,
    background_lte: GraphQLNullable<BigInt> = nil,
    background_in: GraphQLNullable<[BigInt]> = nil,
    background_not_in: GraphQLNullable<[BigInt]> = nil,
    body: GraphQLNullable<BigInt> = nil,
    body_not: GraphQLNullable<BigInt> = nil,
    body_gt: GraphQLNullable<BigInt> = nil,
    body_lt: GraphQLNullable<BigInt> = nil,
    body_gte: GraphQLNullable<BigInt> = nil,
    body_lte: GraphQLNullable<BigInt> = nil,
    body_in: GraphQLNullable<[BigInt]> = nil,
    body_not_in: GraphQLNullable<[BigInt]> = nil,
    accessory: GraphQLNullable<BigInt> = nil,
    accessory_not: GraphQLNullable<BigInt> = nil,
    accessory_gt: GraphQLNullable<BigInt> = nil,
    accessory_lt: GraphQLNullable<BigInt> = nil,
    accessory_gte: GraphQLNullable<BigInt> = nil,
    accessory_lte: GraphQLNullable<BigInt> = nil,
    accessory_in: GraphQLNullable<[BigInt]> = nil,
    accessory_not_in: GraphQLNullable<[BigInt]> = nil,
    head: GraphQLNullable<BigInt> = nil,
    head_not: GraphQLNullable<BigInt> = nil,
    head_gt: GraphQLNullable<BigInt> = nil,
    head_lt: GraphQLNullable<BigInt> = nil,
    head_gte: GraphQLNullable<BigInt> = nil,
    head_lte: GraphQLNullable<BigInt> = nil,
    head_in: GraphQLNullable<[BigInt]> = nil,
    head_not_in: GraphQLNullable<[BigInt]> = nil,
    glasses: GraphQLNullable<BigInt> = nil,
    glasses_not: GraphQLNullable<BigInt> = nil,
    glasses_gt: GraphQLNullable<BigInt> = nil,
    glasses_lt: GraphQLNullable<BigInt> = nil,
    glasses_gte: GraphQLNullable<BigInt> = nil,
    glasses_lte: GraphQLNullable<BigInt> = nil,
    glasses_in: GraphQLNullable<[BigInt]> = nil,
    glasses_not_in: GraphQLNullable<[BigInt]> = nil,
    _change_block: GraphQLNullable<BlockChangedFilter> = nil,
    and: GraphQLNullable<[Seed_filter?]> = nil,
    or: GraphQLNullable<[Seed_filter?]> = nil
  ) {
    __data = InputDict([
      "id": id,
      "id_not": id_not,
      "id_gt": id_gt,
      "id_lt": id_lt,
      "id_gte": id_gte,
      "id_lte": id_lte,
      "id_in": id_in,
      "id_not_in": id_not_in,
      "background": background,
      "background_not": background_not,
      "background_gt": background_gt,
      "background_lt": background_lt,
      "background_gte": background_gte,
      "background_lte": background_lte,
      "background_in": background_in,
      "background_not_in": background_not_in,
      "body": body,
      "body_not": body_not,
      "body_gt": body_gt,
      "body_lt": body_lt,
      "body_gte": body_gte,
      "body_lte": body_lte,
      "body_in": body_in,
      "body_not_in": body_not_in,
      "accessory": accessory,
      "accessory_not": accessory_not,
      "accessory_gt": accessory_gt,
      "accessory_lt": accessory_lt,
      "accessory_gte": accessory_gte,
      "accessory_lte": accessory_lte,
      "accessory_in": accessory_in,
      "accessory_not_in": accessory_not_in,
      "head": head,
      "head_not": head_not,
      "head_gt": head_gt,
      "head_lt": head_lt,
      "head_gte": head_gte,
      "head_lte": head_lte,
      "head_in": head_in,
      "head_not_in": head_not_in,
      "glasses": glasses,
      "glasses_not": glasses_not,
      "glasses_gt": glasses_gt,
      "glasses_lt": glasses_lt,
      "glasses_gte": glasses_gte,
      "glasses_lte": glasses_lte,
      "glasses_in": glasses_in,
      "glasses_not_in": glasses_not_in,
      "_change_block": _change_block,
      "and": and,
      "or": or
    ])
  }

  public var id: GraphQLNullable<ID> {
    get { __data["id"] }
    set { __data["id"] = newValue }
  }

  public var id_not: GraphQLNullable<ID> {
    get { __data["id_not"] }
    set { __data["id_not"] = newValue }
  }

  public var id_gt: GraphQLNullable<ID> {
    get { __data["id_gt"] }
    set { __data["id_gt"] = newValue }
  }

  public var id_lt: GraphQLNullable<ID> {
    get { __data["id_lt"] }
    set { __data["id_lt"] = newValue }
  }

  public var id_gte: GraphQLNullable<ID> {
    get { __data["id_gte"] }
    set { __data["id_gte"] = newValue }
  }

  public var id_lte: GraphQLNullable<ID> {
    get { __data["id_lte"] }
    set { __data["id_lte"] = newValue }
  }

  public var id_in: GraphQLNullable<[ID]> {
    get { __data["id_in"] }
    set { __data["id_in"] = newValue }
  }

  public var id_not_in: GraphQLNullable<[ID]> {
    get { __data["id_not_in"] }
    set { __data["id_not_in"] = newValue }
  }

  public var background: GraphQLNullable<BigInt> {
    get { __data["background"] }
    set { __data["background"] = newValue }
  }

  public var background_not: GraphQLNullable<BigInt> {
    get { __data["background_not"] }
    set { __data["background_not"] = newValue }
  }

  public var background_gt: GraphQLNullable<BigInt> {
    get { __data["background_gt"] }
    set { __data["background_gt"] = newValue }
  }

  public var background_lt: GraphQLNullable<BigInt> {
    get { __data["background_lt"] }
    set { __data["background_lt"] = newValue }
  }

  public var background_gte: GraphQLNullable<BigInt> {
    get { __data["background_gte"] }
    set { __data["background_gte"] = newValue }
  }

  public var background_lte: GraphQLNullable<BigInt> {
    get { __data["background_lte"] }
    set { __data["background_lte"] = newValue }
  }

  public var background_in: GraphQLNullable<[BigInt]> {
    get { __data["background_in"] }
    set { __data["background_in"] = newValue }
  }

  public var background_not_in: GraphQLNullable<[BigInt]> {
    get { __data["background_not_in"] }
    set { __data["background_not_in"] = newValue }
  }

  public var body: GraphQLNullable<BigInt> {
    get { __data["body"] }
    set { __data["body"] = newValue }
  }

  public var body_not: GraphQLNullable<BigInt> {
    get { __data["body_not"] }
    set { __data["body_not"] = newValue }
  }

  public var body_gt: GraphQLNullable<BigInt> {
    get { __data["body_gt"] }
    set { __data["body_gt"] = newValue }
  }

  public var body_lt: GraphQLNullable<BigInt> {
    get { __data["body_lt"] }
    set { __data["body_lt"] = newValue }
  }

  public var body_gte: GraphQLNullable<BigInt> {
    get { __data["body_gte"] }
    set { __data["body_gte"] = newValue }
  }

  public var body_lte: GraphQLNullable<BigInt> {
    get { __data["body_lte"] }
    set { __data["body_lte"] = newValue }
  }

  public var body_in: GraphQLNullable<[BigInt]> {
    get { __data["body_in"] }
    set { __data["body_in"] = newValue }
  }

  public var body_not_in: GraphQLNullable<[BigInt]> {
    get { __data["body_not_in"] }
    set { __data["body_not_in"] = newValue }
  }

  public var accessory: GraphQLNullable<BigInt> {
    get { __data["accessory"] }
    set { __data["accessory"] = newValue }
  }

  public var accessory_not: GraphQLNullable<BigInt> {
    get { __data["accessory_not"] }
    set { __data["accessory_not"] = newValue }
  }

  public var accessory_gt: GraphQLNullable<BigInt> {
    get { __data["accessory_gt"] }
    set { __data["accessory_gt"] = newValue }
  }

  public var accessory_lt: GraphQLNullable<BigInt> {
    get { __data["accessory_lt"] }
    set { __data["accessory_lt"] = newValue }
  }

  public var accessory_gte: GraphQLNullable<BigInt> {
    get { __data["accessory_gte"] }
    set { __data["accessory_gte"] = newValue }
  }

  public var accessory_lte: GraphQLNullable<BigInt> {
    get { __data["accessory_lte"] }
    set { __data["accessory_lte"] = newValue }
  }

  public var accessory_in: GraphQLNullable<[BigInt]> {
    get { __data["accessory_in"] }
    set { __data["accessory_in"] = newValue }
  }

  public var accessory_not_in: GraphQLNullable<[BigInt]> {
    get { __data["accessory_not_in"] }
    set { __data["accessory_not_in"] = newValue }
  }

  public var head: GraphQLNullable<BigInt> {
    get { __data["head"] }
    set { __data["head"] = newValue }
  }

  public var head_not: GraphQLNullable<BigInt> {
    get { __data["head_not"] }
    set { __data["head_not"] = newValue }
  }

  public var head_gt: GraphQLNullable<BigInt> {
    get { __data["head_gt"] }
    set { __data["head_gt"] = newValue }
  }

  public var head_lt: GraphQLNullable<BigInt> {
    get { __data["head_lt"] }
    set { __data["head_lt"] = newValue }
  }

  public var head_gte: GraphQLNullable<BigInt> {
    get { __data["head_gte"] }
    set { __data["head_gte"] = newValue }
  }

  public var head_lte: GraphQLNullable<BigInt> {
    get { __data["head_lte"] }
    set { __data["head_lte"] = newValue }
  }

  public var head_in: GraphQLNullable<[BigInt]> {
    get { __data["head_in"] }
    set { __data["head_in"] = newValue }
  }

  public var head_not_in: GraphQLNullable<[BigInt]> {
    get { __data["head_not_in"] }
    set { __data["head_not_in"] = newValue }
  }

  public var glasses: GraphQLNullable<BigInt> {
    get { __data["glasses"] }
    set { __data["glasses"] = newValue }
  }

  public var glasses_not: GraphQLNullable<BigInt> {
    get { __data["glasses_not"] }
    set { __data["glasses_not"] = newValue }
  }

  public var glasses_gt: GraphQLNullable<BigInt> {
    get { __data["glasses_gt"] }
    set { __data["glasses_gt"] = newValue }
  }

  public var glasses_lt: GraphQLNullable<BigInt> {
    get { __data["glasses_lt"] }
    set { __data["glasses_lt"] = newValue }
  }

  public var glasses_gte: GraphQLNullable<BigInt> {
    get { __data["glasses_gte"] }
    set { __data["glasses_gte"] = newValue }
  }

  public var glasses_lte: GraphQLNullable<BigInt> {
    get { __data["glasses_lte"] }
    set { __data["glasses_lte"] = newValue }
  }

  public var glasses_in: GraphQLNullable<[BigInt]> {
    get { __data["glasses_in"] }
    set { __data["glasses_in"] = newValue }
  }

  public var glasses_not_in: GraphQLNullable<[BigInt]> {
    get { __data["glasses_not_in"] }
    set { __data["glasses_not_in"] = newValue }
  }

  /// Filter for the block changed event.
  public var _change_block: GraphQLNullable<BlockChangedFilter> {
    get { __data["_change_block"] }
    set { __data["_change_block"] = newValue }
  }

  public var and: GraphQLNullable<[Seed_filter?]> {
    get { __data["and"] }
    set { __data["and"] = newValue }
  }

  public var or: GraphQLNullable<[Seed_filter?]> {
    get { __data["or"] }
    set { __data["or"] = newValue }
  }
}
