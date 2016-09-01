//
//  ViewController.m
//  UIAlertControllerDemo
//
//  Created by A11130321050034 on 16/9/1.
//  Copyright © 2016年 GMY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)showAlert:(id)sender {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"请修改输入内容" preferredStyle:UIAlertControllerStyleAlert];
    [alertController.view setNeedsLayout]; // 去掉这行log上会打印错误
    
    [alertController addTextFieldWithConfigurationHandler:^(UITextField *textField){
        textField.placeholder = @"内容";
        //        [textField setFont:[UIFont systemFontOfSize:16]];
    }];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
//        UITextField *login = alertController.textFields.firstObject;
        
    }];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
    }];
    /*title*/
    NSMutableAttributedString *alertTitleStr = [[NSMutableAttributedString alloc] initWithString:@"提示"];
    [alertTitleStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 2)];
    [alertTitleStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
    [alertController setValue:alertTitleStr forKey:@"attributedTitle"];
    
    /*message*/
    NSMutableAttributedString *alertMessageStr = [[NSMutableAttributedString alloc] initWithString:@"请修改输入内容"];
    [alertMessageStr addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:18] range:NSMakeRange(0, 7)];
    [alertMessageStr addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange(0, 3)];
    [alertMessageStr addAttribute:NSForegroundColorAttributeName value:[UIColor greenColor] range:NSMakeRange(3, 2)];
    [alertMessageStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(5, 2)];
    [alertController setValue:alertMessageStr forKey:@"attributedMessage"];
    
    /*取消按钮的颜色*/
    [cancel setValue:[UIColor redColor] forKey:@"_titleTextColor"];
    [alertController addAction:cancel];
    [alertController addAction:okAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
