//
//  ViewController.m
//  cbsNetWork
//
//  Created by 陈秉慎 on 1/15/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import "ViewController.h"
#import "cbsNetWork.h"
#import "Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)network:(id)sender
{
    [[cbsNetWork sharedManager] requestWithMethod:GET WithPath:@"get" WithParams:nil WithSuccessBlock:^(NSDictionary *dic) {
        Model *model = [MTLJSONAdapter modelOfClass:[Model class] fromJSONDictionary:dic error:nil];
        NSLog(@"%@", model.origin);
    } WithFailurBlock:^(NSError *error) {
        
    }];
}


@end
