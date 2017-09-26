//
//  ViewController.m
//  ARCAndMRC
//
//  Created by 安宁 on 2017/8/31.
//  Copyright © 2017年 安宁. All rights reserved.
//

#import "ViewController.h"
#import "MRCModel.h"




/**
    1. mrc 引用 arc文件   ARC 不用做处理  mrc中创建的对象要遵循谁创建谁释放
        对象释放后不能再调用对应属性（）
 
 
    tips:
        1. mrc 下 如果对象被释放了  接着调用该对象属性  会报错 
            ARC 下 对象为空时 调用该对象的属性 不会报错
 */
@interface ViewController ()

{
    MRCModel * model ;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    for (int i = 0 ; i  < 10000; i++)
    {

        [self test];
    }


}

-(void)test
{

    model = [[MRCModel alloc]init];
    
    NSLog(@"=== %ld",[model retainCount]);
    [model release];
    
    NSLog(@"===111 %ld",[model retainCount]);


}



@end
