//
//  ViewController.m
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 27/12/21.
//

#import "ViewController.h"
#import "Contato.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction) adiciona {
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.telefone = self.telefone.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.site = self.site.text;
    NSLog(@"Dados do contato: %@, %@, %@, %@, %@", contato.nome, contato.telefone, contato.endereco, contato.email, contato.site);
}


@end
