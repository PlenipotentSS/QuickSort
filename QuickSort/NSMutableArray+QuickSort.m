//
//  NSMutableArray+QuickSort.m
//  QuickSort
//
//  Created by Stevenson on 26/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import "NSMutableArray+QuickSort.h"
#import "IntegerNode.h"

@implementation NSMutableArray (QuickSort)

+(void)quickSortAnArray:(NSMutableArray*) theArray
{
    
    [NSMutableArray printArray:theArray];
    [self quickSortWithArray:theArray withLeft:0 withRight:(theArray.count)];
}

+(void) quickSortWithArray:(NSMutableArray*) theArray withLeft: (NSInteger) left withRight: (NSInteger) right
{
    if (left < right) {
        NSInteger pivotIndex = [NSMutableArray partitionWithArray:theArray Left:left andRight:right];
        [NSMutableArray printArray:theArray];
        [NSMutableArray quickSortWithArray:theArray withLeft:left withRight:pivotIndex];
        [NSMutableArray quickSortWithArray:theArray withLeft:pivotIndex+1 withRight:right];
    }
}

+(NSInteger) partitionWithArray:(NSMutableArray*) theArray Left: (NSInteger) left andRight: (NSInteger) right
{
    IntegerNode *pivot = theArray[left];
    NSInteger leftTraversal = left;
    for (int i=left; i<right; i++) {
        if ([(IntegerNode*)theArray[i] value] < [pivot value]) {
            leftTraversal++;
            [theArray exchangeObjectAtIndex:i withObjectAtIndex:leftTraversal];
        }
    }
    [theArray exchangeObjectAtIndex:left withObjectAtIndex:leftTraversal];
    
    return [theArray indexOfObject:pivot];
}

+(void)printArray:(NSMutableArray*)theArray
{
    for (int i=0;i<theArray.count;i++) {
        NSLog(@"index %d: %d",i,[(IntegerNode*)[theArray objectAtIndex:i]  value]);
    }
}

@end
