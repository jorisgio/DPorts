# New ports collection makefile for:	annoyance-filter
# Date created:		2004-01-02
# Whom:			Sergei Kolobov <sergei@FreeBSD.org>
#
# $FreeBSD: ports/mail/annoyance-filter/Makefile,v 1.9 2012/11/17 05:58:58 svnexp Exp $
#

PORTNAME=	annoyance-filter
PORTVERSION=	1.0d
CATEGORIES=	mail
MASTER_SITES=	SF/annoyancefilter/annoyancefilter/${PORTVERSION} \
		http://www.fourmilab.ch/annoyance-filter/


MAINTAINER=	ports@FreeBSD.org
COMMENT=	Adaptive Bayesian Junk Mail Filter

GNU_CONFIGURE=		yes

MAN1=		annoyance-filter.1
DOCS=		COPYING INSTALL README *.pdf

CFLAGS=		${CPPFLAGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME}-run ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.1 ${MAN1PREFIX}/man/man1
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
