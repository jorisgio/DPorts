# New ports collection makefile for:	p5-Games-Bingo-Bot
# Date created:				20. August 2003
# Whom:					Lars Thegler <lars@thegler.dk>
#
# $FreeBSD: ports/games/p5-Games-Bingo-Bot/Makefile,v 1.6 2012/11/17 05:57:48 svnexp Exp $
#

PORTNAME=	Games-Bingo-Bot
PORTVERSION=	0.01
CATEGORIES=	games perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	lth@FreeBSD.org
COMMENT=	A simple class holding IRC related methods for bingo

BUILD_DEPENDS=	p5-Games-Bingo>=0:${PORTSDIR}/games/p5-Games-Bingo
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes

MAN3=		Games::Bingo::Bot.3

post-install:
.ifndef(NOPORTDOCS)
	@${ECHO_MSG} "===>   Installing example for ${PKGNAME}"
	@${MKDIR} ${EXAMPLESDIR}
	${INSTALL_SCRIPT} ${WRKSRC}/bin/bingobot.pl ${EXAMPLESDIR}
.endif

test:
	@cd ${WRKSRC}; make test

.include <bsd.port.mk>
