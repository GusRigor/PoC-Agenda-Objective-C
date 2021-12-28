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

- (id) initWithCoder: (NSCoder *) aDecoder{
    self = [super initWithCoder: aDecoder];
    if (self){
        UIBarButtonItem *botao = [[UIBarButtonItem alloc] initWithTitle:@"Adicionar" style: UIBarButtonItemStylePlain target:self action: @selector(adiciona)];
        self.navigationItem.rightBarButtonItem = botao;
        self.navigationItem.title = @"Novo Contato";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void) adiciona {
    Contato *contato = [Contato new];
    contato.nome = self.nome.text;
    contato.telefone = self.telefone.text;
    contato.endereco = self.endereco.text;
    contato.email = self.email.text;
    contato.site = self.site.text;
    
    [self.navigationController popViewControllerAnimated: YES];
}


@end
