//
//  ViewController.h
//  Introducao iOS - LLM
//
//  Created by Lucas Leal Mendonça on 23/02/15.
//  Copyright (c) 2015 Bepid. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *pergunta;
@property (weak, nonatomic) IBOutlet UILabel *resposta;

@property (nonatomic, retain) IBOutlet UIImageView* imageView;

- (IBAction)proxPerg:(id)sender;
- (IBAction)exibirRes:(id)sender;


@end

