//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// INPUT
// Collect and filter user input here

var lowerLimitRange = 0
var upperLimitRange = 0
while 1 == 1 {
    
    // Prompt the user
    print("enter the lower limit:")
    
     // Test #1: Make sure input is not nil
    guard let givenInput = readLine() else {
        
        continue    // continue with next iteration of the loop
        }

     // Test #2: Make sure input can be represented as an integer
    guard let givenInteger = Int(givenInput) else {
        
        continue    // continue with next iteration of the loop
        }

    // Test #3: Make sure input is in correct range
    if givenInteger < 1 || givenInteger > 1000 {
        
        continue
        }
        // Input is valid, so assign it to the variable to be used outside this loop
        
     lowerLimitRange = givenInteger
        
        break
    
}

while 1 == 1 {
    
     // Prompt the user
     print("enter the upper limit:")

    // Test #1: Make sure input is not nil
     guard let givenInput = readLine() else {
    
     continue    // continue with next iteration of the loop
     }

    // Test #2: Make sure input can be represented as an integer
     guard let givenInteger = Int(givenInput) else {
    
     continue    // continue with next iteration of the loop
     }

// Test #3: Make sure input is in correct range
if givenInteger < 1 || givenInteger > 1000 {
    
    continue
     }
// Input is valid, so assign it to the variable to be used outside this loop

    upperLimitRange = givenInteger

break

  }

// PROCESS
  var RSA = 0
    for numbers in lowerLimitRange ... upperLimitRange {
    var diviser = 0
       for i in 1 ... numbers{
       if numbers % i == 0 {
       diviser += 1
        
        }
        }
    if diviser == 4 {
    RSA += 1

        }
}
    
    // OUTPUT
    // Report results to the user here
    print("The number of RSA is \(RSA)")

