# New ports collection makefile for:	www/p5-Syntax-Highlight-Shell
# Date created:				01 September 2005
# Whom:					Anton Berezin <tobez@FreeBSD.org>
#
# $FreeBSD: ports/www/p5-Syntax-Highlight-Shell/Makefile,v 1.7 2012/11/17 06:02:54 svnexp Exp $
#

PORTNAME=	Syntax-Highlight-Shell
PORTVERSION=	0.04
CATEGORIES=	www perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Syntax::Highlight::Shell - Highlight shell scripts

BUILD_DEPENDS=	p5-Shell-Parser>=0:${PORTSDIR}/devel/p5-Shell-Parser
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=	Syntax::Highlight::Shell.3

.include <bsd.port.mk>
