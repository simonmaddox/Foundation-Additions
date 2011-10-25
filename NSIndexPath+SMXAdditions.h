//
//  NSIndexPath+SMXAdditions.h
//
//  Created by Simon Maddox on 25/10/2011.
//  Copyright (c) 2011 Simon Maddox. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSIndexPath (SMXAdditions)

// These methods will give you the next/previous rows in a UITableView,
// and will handle sections automatically for you.
//
// If they return nil, there is no next/previous row.

- (NSIndexPath *) nextRowForTableView:(UITableView *)tableView;
- (NSIndexPath *) previousRowForTableView:(UITableView *)tableView;

@end
