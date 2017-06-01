//
//  HashTable.swift
//  AlgorithmKit
//
//  Created by SwiftZimu on 2017/5/31.
//  Copyright © 2017年 swiftlang. All rights reserved.
//


public struct HashTable<Key: Hashable, Value>: CustomStringConvertible {
    private typealias Element = (key: Key, value: Value)
    private typealias Bucket = [Element]
    private var buckets: [Bucket]

    public var  description: String {
        let pairs = buckets.flatMap { b in
            b.map{ e in "\(e.key) = \(e.value)"}
        }
        return pairs.joined(separator: ", ")
    }


}
