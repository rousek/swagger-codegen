//
// GetAllModelsResult.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Response object containing AllPrimitives object */

open class GetAllModelsResult: Codable {

    public var myPrimitiveArray: [AllPrimitives]?
    public var myPrimitive: AllPrimitives?
    public var myVariableNameTest: VariableNameTest?


    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {

        var container = encoder.container(keyedBy: String.self)

        try container.encodeArrayIfPresent(myPrimitiveArray, forKey: "myPrimitiveArray")
        try container.encodeIfPresent(myPrimitive, forKey: "myPrimitive")
        try container.encodeIfPresent(myVariableNameTest, forKey: "myVariableNameTest")
    }

    // Decodable protocol methods
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: String.self)

        myPrimitiveArray = try container.decodeArrayIfPresent(AllPrimitives.self, forKey: "myPrimitiveArray")
        myPrimitive = try container.decodeIfPresent(AllPrimitives.self, forKey: "myPrimitive")
        myVariableNameTest = try container.decodeIfPresent(VariableNameTest.self, forKey: "myVariableNameTest")
    }
}
