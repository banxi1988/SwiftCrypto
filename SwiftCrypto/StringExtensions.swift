//
//  StringExtensions.swift
//  iOSApp
//

import Foundation
import CCommonCrypto

public extension String{
  public func sha1() -> String?{
    if let data = self.dataUsingEncoding(NSUTF8StringEncoding){
      let byteCount = Int(CC_SHA1_DIGEST_LENGTH)
      let mutableBytes = UnsafeMutablePointer<UInt8>.alloc(byteCount)
      CC_SHA1(data.bytes,CC_LONG(data.length),mutableBytes)
      var s = ""
      for i in 0..<byteCount{
        s += String(format:"%02x",mutableBytes[i])
      }
      return s
      
    }
    return nil
  }
  
  public func sha256() -> String?{
    if let data = self.dataUsingEncoding(NSUTF8StringEncoding){
      let byteCount = Int(CC_SHA256_DIGEST_LENGTH)
      let mutableBytes = UnsafeMutablePointer<UInt8>.alloc(byteCount)
      CC_SHA256(data.bytes,CC_LONG(data.length),mutableBytes)
      var s = ""
      for i in 0..<byteCount{
        s += String(format:"%02x",mutableBytes[i])
      }
      return s
      
    }
    return nil
  }
  
  public func sha512() -> String?{
    if let data = self.dataUsingEncoding(NSUTF8StringEncoding){
      let byteCount = Int(CC_SHA512_DIGEST_LENGTH)
      let mutableBytes = UnsafeMutablePointer<UInt8>.alloc(byteCount)
      CC_SHA512(data.bytes,CC_LONG(data.length),mutableBytes)
      var s = ""
      for i in 0..<byteCount{
        s += String(format:"%02x",mutableBytes[i])
      }
      return s
      
    }
    return nil
  }
  
  public func md5() -> String?{
    if let data = self.dataUsingEncoding(NSUTF8StringEncoding){
      let byteCount = Int(CC_MD5_DIGEST_LENGTH)
      let mutableBytes = UnsafeMutablePointer<UInt8>.alloc(byteCount)
      CC_MD5(data.bytes,CC_LONG(data.length),mutableBytes)
      var s = ""
      for i in 0..<byteCount{
        s += String(format:"%02x",mutableBytes[i])
      }
      return s
      
    }
    return nil
  }
}