# New ports collection makefile for:	explosions
# Date created:				8 August 2001
# Whom:					Pete Fritchman <petef@databits.net>
#
# $FreeBSD: ports/misc/explosions/Makefile,v 1.23 2012/11/17 05:59:34 svnexp Exp $
#

PORTNAME=	explosions
PORTVERSION=	0.2005.07.31
PORTREVISION=	12
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.billsgames.com/unix/x/explosions/
DISTNAME=	${PORTNAME}-${PORTVERSION:S/^0.//}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	3D objects flying around resembling explosions with various effects

USE_SDL=	sdl image
USE_GMAKE=	yes
USE_PERL5_BUILD=yes

post-patch:
	@${PERL} -pi -e 's!CFLAGS=-Wall -O2!CFLAGS+=-Wall!; \
		s!sdl-config!${SDL_CONFIG}!' \
		${WRKSRC}/Makefile
	@${PERL} -pi -e 's!spark%d.png!${DATADIR}/spark%d.png!' \
		${WRKSRC}/explosions.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/explosions ${PREFIX}/bin
	@${MKDIR} ${DATADIR}
	${INSTALL_DATA} ${WRKSRC}/spark?.png ${DATADIR}
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in BUGS.txt CHANGES.txt README.txt
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
