//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 27/12/21.
//

#import "Contato.h"

@implementation Contato

NSString *nome;

-(void) setNome: (NSString *)novoNome {
    nome = novoNome;
}

-(NSString *) nome{
    return nome;
}

@end
