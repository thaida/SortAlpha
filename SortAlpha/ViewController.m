//
//  ViewController.m
//  SortAlpha
//
//  Created by Dinh Anh Thai on 9/15/13.
//  Copyright (c) 2013 thaida. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sortAlpha:(id)sender {
    //khoi tao danh sach doi tuong
    Person *person1 = [[Person alloc] initWithFirstName: @"Nhi"
                                                     lastName: @"Hoang"
                                                          age: 27];
    Person *person2 = [[Person alloc] initWithFirstName: @"Thai"
                                                      lastName: @"Dinh"
                                                           age: 26];
    Person *person3 = [[Person alloc] initWithFirstName: @"Thanh"
                                                     lastName: @"Dinh"
                                                          age: 23];
    Person *person4 = [[Person alloc] initWithFirstName: @"Bang"
                                                     lastName: @"Tran"
                                                          age: 28];
    Person *person5 = [[Person alloc] initWithFirstName: @"Hang"
                                                     lastName: @"Ngo"
                                                          age: 30];
    Person *person6 = [[Person alloc] initWithFirstName: @"Canh"
                                                     lastName: @"Nguyen"
                                                          age: 31];
    Person *person7 = [[Person alloc] initWithFirstName: @"Duc"
                                                     lastName: @"Le"
                                                          age: 30];
    Person *person8 = [[Person alloc] initWithFirstName: @"An"
                                                     lastName: @"Nguyen"
                                                          age: 28];
    Person *person9 = [[Person alloc] initWithFirstName: @"Le"
                                                     lastName: @"Nguyen"
                                                          age: 23];
    Person *person10 = [[Person alloc] initWithFirstName: @"Giang"
                                                     lastName: @"Pham"
                                                          age: 27];
    self.persons = [NSArray arrayWithObjects: person1, person2, person3, person4, person5, person6, person7, person8, person9, person10, nil];
    //end khoi tao danh sach doi tuong
    
    //sap xep ten theo alphabe
    NSSortDescriptor *firstNameDescriptor =  [[NSSortDescriptor alloc] initWithKey:@"firstName" ascending: YES selector: @selector(localizedStandardCompare:)];
    
    
    NSArray *sortDescriptors = @[firstNameDescriptor];
    
    NSArray *firstNameSortArray = [_persons sortedArrayUsingDescriptors: sortDescriptors];
    
    NSLog(@"%@", firstNameSortArray);
    
    //sap xep do dai cua ten theo thu tu
    NSSortDescriptor *lengthDescriptor =  [[NSSortDescriptor alloc] initWithKey:@"lengthOfName" ascending: YES];
    NSArray *lengthSortDescriptors = @[lengthDescriptor, firstNameDescriptor];
    
    NSArray *ageSortArray = [_persons sortedArrayUsingDescriptors: lengthSortDescriptors];
    NSLog(@"Sorting using SortDescriptor: %@", ageSortArray);

}
@end
