# New ports collection makefile for:	mysqlidxchk
# Date created:				29 April 2009
# Whom:					Andrey Ignatov <rdna@rdna.ru>
#
# $FreeBSD: ports/databases/mysqlidxchk/Makefile,v 1.4 2012/11/17 05:55:12 svnexp Exp $
#

PORTNAME=	mysqlidxchk
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	databases
MASTER_SITES=	http://hackmysql.com/scripts/
EXTRACT_SUFX=	.tgz

MAINTAINER=	rdna@rdna.ru
COMMENT=	Checks MySQL databases/tables for unused indexes

RUN_DEPENDS=	p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey \
		p5-DBI>=0:${PORTSDIR}/databases/p5-DBI \
		p5-DBD-mysql>=0:${PORTSDIR}/databases/p5-DBD-mysql

NO_WRKSUBDIR=	yes

USE_PERL5=	yes
NO_BUILD=	yes

PLIST_FILES=	bin/mysqlidxchk
PORTDOCS=	mysqlidxchkdoc.html mysqlidxchkguide.html

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/mysqlidxchk ${PREFIX}/bin

.if !defined(NOPORTDOCS)
	@${ECHO_MSG} "===>   Installing documentation for ${PKGNAME}"
	@${MKDIR} ${DOCSDIR}
	@${INSTALL_DATA} ${PORTDOCS:S,^,${WRKSRC}/,} ${DOCSDIR}
.endif

.include <bsd.port.mk>
