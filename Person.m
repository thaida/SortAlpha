//
//  Person.m
//  SortAlpha
//
//  Created by Dinh Anh Thai on 9/15/13.
//  Copyright (c) 2013 thaida. All rights reserved.
//

#import "Person.h"

@implementation Person

/* Ham khoi tao
 */
-(id) initWithFirstName:(NSString *)firstName
               lastName:(NSString *)lastName
                    age:(int)age{
    if(self = [super init]){
        self.firstName = firstName;
        self.lastName = lastName;
        self.age = age;
        self.lengthOfName = firstName.length + lastName.length;
    }
    return self;
}

/* In ra thong tin cua ca nhan, viet de lai description
 */
- (NSString*)description{
    NSString *desc = [NSString stringWithFormat: @"%@ %@ co tuoi la %d ", self.firstName, self.lastName, self.age];
    return  desc;
}
@end
