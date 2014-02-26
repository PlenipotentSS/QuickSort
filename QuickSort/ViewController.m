//
//  ViewController.m
//  QuickSort
//
//  Created by Stevenson on 26/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "ViewController.h"
#import "IntegerNode.h"
#import "NSMutableArray+QuickSort.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    NSMutableArray *anArray = [NSMutableArray new];
    NSMutableArray *valueArray = [NSMutableArray new];
    for (int i =0; i<20; i++) {
        NSInteger value = (NSInteger)rand()%20;
        if (![valueArray containsObject:@(value)]) {
            IntegerNode *node = [IntegerNode new];
            node.value = value;
            [anArray addObject:node];
            [valueArray addObject:@(value)];
        }
    }
    [NSMutableArray quickSortAnArray:anArray];
    [NSMutableArray printArray:anArray];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
