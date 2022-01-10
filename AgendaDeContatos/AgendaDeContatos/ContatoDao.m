//
//  ContatoDao.m
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 04/01/22.
//

#import "ContatoDao.h"

@implementation ContatoDao

static ContatoDao *defaultDao = nil;

- (id) init{
    self = [super init];
    if (self) {
        self.contatos = [NSMutableArray new];
    }
    return self;
}

+ (ContatoDao *) contatoDaoInstance {
    if(!defaultDao){
        defaultDao = [ContatoDao new];
    }
    return defaultDao;
}

- (void) adicionaContato:(Contato *)contato{
    [self.contatos addObject: contato];
}

- (void) removeContato:(Contato *)contato{
    [self.contatos removeObject: contato];
}

-(NSInteger)total{
    return self.contatos.count;
}

-(Contato *)contatoDoIndice:(NSInteger)indice{
    return self.contatos[indice];
}

-(NSInteger)indiceDoContato:(Contato *)contato{
    return [self.contatos indexOfObject:contato];
}
@end
