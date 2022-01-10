//
//  Contato.m
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 27/12/21.
//

#import "Contato.h"

@implementation Contato

- (NSString *)description{
    NSString *dados = [[NSString alloc] initWithFormat: @"Nome: %@ E-mail: %@ Telefone: %@ Endereco: %@ Site: %@", self.nome, self.email, self.telefone, self.endereco, self.site];
    return dados;
}

@end
