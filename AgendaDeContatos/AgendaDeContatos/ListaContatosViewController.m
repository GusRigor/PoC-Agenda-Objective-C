//
//  ListaContatosViewController.m
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 28/12/21.
//

#import "ListaContatosViewController.h"
#import "ViewController.h"

@implementation ListaContatosViewController

-(ListaContatosViewController *) init{
    self = [super init];
    
    UIBarButtonItem *botaoForm = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd  target:self action: @selector(exibeFormulario)];
    
    self.navigationItem.rightBarButtonItem = botaoForm;
    self.navigationItem.title = @"Contato"
    
    return self;
}

-(void) exibeFormulario {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName: @"Main" bundle: nil];
    UIViewController *form = [storyboard instantiateViewControllerWithIdentifier: @"Form-Contato"];
    [self.navigationController pushViewController: form animated: YES];
}
@end
