//
//  ViewController.h
//  SortAlpha
//
//  Created by Dinh Anh Thai on 9/15/13.
//  Copyright (c) 2013 thaida. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
/* Mang luu tru toan bo nguoi
 */
@property (nonatomic, strong) NSArray *persons;

- (IBAction)sortAlpha:(id)sender;

@end
