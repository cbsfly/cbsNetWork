//
//  Model.h
//  cbsNetWork
//
//  Created by 陈秉慎 on 1/15/16.
//  Copyright © 2016 cbs. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Model : MTLModel<MTLJSONSerializing>
@property (nonatomic, strong) NSString *origin;

@end
