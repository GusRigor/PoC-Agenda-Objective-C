//
//  ContatoDao.h
//  AgendaDeContatos
//
//  Created by Gustavo Rigor on 04/01/22.
//

#import <Foundation/Foundation.h>
#import "Contato.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContatoDao : NSObject

@property NSMutableArray *contatos;

- (void) adicionaContato: (Contato *) contato;
- (void) removeContato: (Contato *) contato;
- (NSInteger) total;
- (Contato *) contatoDoIndice: (NSInteger) indice;
- (NSInteger) indiceDoContato: (Contato *) contato;
+ (ContatoDao *) contatoDaoInstance;

@end

NS_ASSUME_NONNULL_END
