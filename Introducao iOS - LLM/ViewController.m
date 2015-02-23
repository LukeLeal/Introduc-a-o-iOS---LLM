//
//  ViewController.m
//  Introducao iOS - LLM
//
//  Created by Lucas Leal Mendonça on 23/02/15.
//  Copyright (c) 2015 Bepid. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSMutableArray *perguntas;
    NSMutableArray *respostas;
    int cont;
    UIImageView* mImageView;
    UIImage* image;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    perguntas = [[NSMutableArray alloc] init];
    cont = 0;
    respostas = [[NSMutableArray alloc] init];
    image = nil;
    _imageView.image = nil;
    [perguntas addObject:@"Terceiro maior país do mundo em extensão?"];
    [perguntas addObject:@"Civilização de Genghis Khan?"];
    [perguntas addObject:@"Dublador do personagem Mario?"];
    _pergunta.text = [perguntas objectAtIndex:cont];
    _resposta.text = @"??";
    [respostas addObject:@"China"];
    [respostas addObject:@"Mongólia"];
    [respostas addObject:@"Charles Martinet"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)proxPerg:(id)sender {
    cont++;
    if (cont > 2) {
        cont = 0;
    }
    _pergunta.text = [perguntas objectAtIndex:cont];
    _resposta.text = @"??";
    image = nil;
    _imageView.image = nil;
}

- (IBAction)exibirRes:(id)sender {
    _resposta.text = [respostas objectAtIndex:cont];
    if (cont == 0) {
        image = [UIImage imageNamed:@"0.jpg"];
    } else if (cont == 1){
        image = [UIImage imageNamed:@"1.jpg"];
    } else {
        image = [UIImage imageNamed:@"2.jpg"];
    }
    _imageView.image = image;
}
@end
