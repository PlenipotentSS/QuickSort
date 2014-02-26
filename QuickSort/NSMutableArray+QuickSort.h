//
//  NSMutableArray+QuickSort.h
//  QuickSort
//
//  Created by Stevenson on 26/02/2014.
//  Copyright (c) 2014 Steven Stevenson. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (QuickSort)


/**
 *
 * Implements Quicksort algorithm to a given input array
 * @param NSMutableArray theArray
 *
**/
+(void)quickSortAnArray:(NSMutableArray*) theArray;

/**
 *
 * Prints Log of an array of objects with key name value
 * @param NSMutableArray theArray
 *
 **/
+(void)printArray:(NSMutableArray*)theArray;

@end
