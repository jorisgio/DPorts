# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: ports/textproc/p5-CQL-Parser/Makefile,v 1.9 2012/12/31 00:43:31 svnexp Exp $

PORTNAME=	CQL-Parser
PORTVERSION=	1.12
CATEGORIES=	textproc perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:BRICAS
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Compiles CQL strings into parse trees of Node subtypes

BUILD_DEPENDS=	p5-Class-Accessor>=0.1:${PORTSDIR}/devel/p5-Class-Accessor \
		p5-Clone>=0.15:${PORTSDIR}/devel/p5-Clone \
		p5-String-Tokenizer>=0.05:${PORTSDIR}/textproc/p5-String-Tokenizer
RUN_DEPENDS:=	${BUILD_DEPENDS}
TEST_DEPENDS=	p5-Test-Exception>=0.21:${PORTSDIR}/devel/p5-Test-Exception

MAN3=	CQL::AndNode.3 \
	CQL::BooleanNode.3 \
	CQL::Lexer.3 \
	CQL::ModifierSet.3 \
	CQL::Node.3 \
	CQL::NotNode.3 \
	CQL::OrNode.3 \
	CQL::Parser.3 \
	CQL::Prefix.3 \
	CQL::PrefixNode.3 \
	CQL::ProxModifierSet.3 \
	CQL::ProxNode.3 \
	CQL::Relation.3 \
	CQL::TermNode.3 \
	CQL::Token.3 \
	CQL::Visitor.3

PERL_CONFIGURE=	yes

.include <bsd.port.mk>
