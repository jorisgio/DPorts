# New ports collection makefile for:	autotrust
# Date created:		2010-01-09
# Whom:			Jaap Akkerhuis <jaap@nlnetlabs.nl>
#
# $FreeBSD: ports/dns/autotrust/Makefile,v 1.8 2012/11/17 05:57:07 svnexp Exp $
#

PORTNAME=	autotrust
PORTVERSION=	0.3.1
PORTREVISION=	4
CATEGORIES=	dns
MASTER_SITES=	http://www.nlnetlabs.nl/downloads/autotrust/

MAINTAINER=	jaap@NLnetLabs.nl
COMMENT=	A tool to automatically update DNSSEC trust anchors

LIB_DEPENDS+=	ldns:${PORTSDIR}/dns/ldns \
		unbound:${PORTSDIR}/dns/unbound

GNU_CONFIGURE=	yes
CFLAGS=		-I${LOCALBASE}/include ${PTHREAD_CFLAGS}
LDFLAGS+=	-L${LOCALBASE}/lib ${PTHREAD_LIBS}

MAN8=		autotrust.8

PLIST_FILES=	sbin/autotrust \
		etc/autotrust/autotrust.conf.sample
PLIST_DIRS=	etc/autotrust

do-patch:
	${REINPLACE_CMD} \
		'45s!=!\?=!; \
		46s!^\(CFLAGS \)\(= -I.\) @CFLAGS@!\1+\2!' \
		${WRKSRC}/Makefile.in

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/${PORTNAME} ${PREFIX}/sbin
	${MKDIR} ${ETCDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}.conf.sample ${ETCDIR}
	${INSTALL_MAN} ${WRKSRC}/${PORTNAME}.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
