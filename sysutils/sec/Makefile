# $FreeBSD: ports/sysutils/sec/Makefile,v 1.19 2012/12/12 21:45:14 svnexp Exp $

PORTNAME=	sec
PORTVERSION=	2.6.2
CATEGORIES=	sysutils
MASTER_SITES=	SF/simple-evcorr/${PORTNAME}/${PORTVERSION}

MAINTAINER=	ecu@200ok.org
COMMENT=	Simple event (logs) correlator

USE_PERL5_RUN=	YES
NO_BUILD=	YES

USE_RC_SUBR=	sec
SUB_LIST=	PERL=${PERL}

MAN8=		sec.8
MANCOMPRESSED=	no
PLIST_FILES=	bin/sec
DATADIR=	share/sec
PORTCONTRIB=	convert.pl itostream.c swatch2sec.pl
PLIST_FILES+=	${PORTCONTRIB:S|^|%%DATADIR%%/|}
PLIST_DIRS+=	${DATADIR}

.include <bsd.port.options.mk>
.if ${PORT_OPTIONS:MDOCS}
PORTDOCS=	ChangeLog README
.endif

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/sec.man ${PREFIX}/man/man8/sec.8
.if empty(PORT_OPTIONS:MDOCS)
	${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_MAN} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif
	@${MKDIR} ${PREFIX}/${DATADIR}
	cd ${WRKSRC}/contrib && ${INSTALL_DATA} ${PORTCONTRIB} ${PREFIX}/${DATADIR}

.include <bsd.port.mk>
