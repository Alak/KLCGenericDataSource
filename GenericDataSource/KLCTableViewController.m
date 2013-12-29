//
//  KLCTableViewController.m
//  GenericDataSource
//
//  Created by Kevin CATHALY on 29/12/2013.
//  Copyright (c) 2013 Kevin Laurent CATHALY. All rights reserved.
//

#import "KLCTableViewController.h"
#import "KLCGenericDataSource.h"
@interface KLCTableViewController ()

@property (nonatomic, strong) NSArray *countries;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

@implementation KLCTableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super init];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"%@", self.countries);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSArray *)countries
{
    if (!_countries) {
        NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity: [[NSLocale ISOCountryCodes] count]];
        
        for (NSString *countryCode in [NSLocale ISOCountryCodes])
        {
            NSString *identifier = [NSLocale localeIdentifierFromComponents:[NSDictionary dictionaryWithObject:countryCode forKey:NSLocaleCountryCode]];
            NSString *country = [[NSLocale currentLocale] displayNameForKey:NSLocaleIdentifier value:identifier];
            [tmpArray addObject: country];
            
        }
        self.countries = [tmpArray sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
    }
    return _countries;
}

@end
