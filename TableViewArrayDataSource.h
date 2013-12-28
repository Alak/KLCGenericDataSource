//
//  TableViewArrayDataSource.h
//  
//
//  Created by Kevin CATHALY on 28/12/2013.
//
//
@import Foundation;

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface TableViewArrayDataSource : NSObject <UITableViewDataSource>

- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
