//
//  NSIndexPath+SMAdditions.m
//
//  Created by Simon Maddox on 25/10/2011.
//  Copyright (c) 2011 Simon Maddox. All rights reserved.
//

#import "NSIndexPath+SMAdditions.h"

@implementation NSIndexPath (SMAdditions)

- (NSIndexPath *) nextRowForTableView:(UITableView *)tableView
{
	NSInteger row = self.row;
	NSInteger section = self.section;
	
	NSInteger numberOfRowsInSection = [tableView numberOfRowsInSection:section];
	
	if ((section == tableView.numberOfSections - 1) && (row == numberOfRowsInSection - 1)){
		// Last row in the last section. Time to bail.
		return nil;
	} else {
		
		if (row == numberOfRowsInSection - 1){
			// This is the last row in the section. Let's go to the first row in the next section.
			section++;
			row = 0;
		} else {
			// There are more rows in this section.
			row++;
		}
	}
	
	return [NSIndexPath indexPathForRow:row inSection:section];
}

- (NSIndexPath *) previousRowForTableView:(UITableView *)tableView
{
	NSInteger row = self.row;
	NSInteger section = self.section;
		
	if ((section == 0) && (row == 0)){
		// First row in the first section. Time to bail.
		return nil;
	} else {
		if (row == 0){
			section--;
			row = [tableView numberOfRowsInSection:section];
		} else {
			row--;
		}
	}
	
	return [NSIndexPath indexPathForRow:row inSection:section];
}

@end
