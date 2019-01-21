//
//  ViewController.m
//  AES128Demo
//
//  Created by zhanbing han on 16/2/22.
//  Copyright © 2016年 北京与车行信息技术有限公司. All rights reserved.
//

#import "ViewController.h"
#import "AESCrypt.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //AES加密iOS代码加密使用方法
    NSString *encryptedData = [AESCrypt encrypt:@"123456" password:@"F$0.%a~+r^#=`M|?"];//加密
    NSLog(@"加密结果 = %@",encryptedData);
    NSString *message = [AESCrypt decrypt:encryptedData password:@"F$0.%a~+r^#=`M|?"]; //解密
    NSLog(@"解密结果 = %@",message);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
