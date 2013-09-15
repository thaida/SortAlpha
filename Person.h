//
//  Person.h
//  SortAlpha
//
//  Created by Dinh Anh Thai on 9/15/13.
//  Copyright (c) 2013 thaida. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) int age;
@property (nonatomic, assign) int lengthOfName;

- (id)initWithFirstName: (NSString *)firstName
               lastName: (NSString *)lastName
                    age: (int)age;

@end
