# New ports collection makefile for:	darkstat
# Date created:				24 February 2002
# Whom:					Anders Nordby <anders@FreeBSD.org>
#
# $FreeBSD: ports/net-mgmt/darkstat/Makefile,v 1.34 2012/11/17 06:00:31 svnexp Exp $
#

PORTNAME=	darkstat
PORTVERSION=	3.0.715
CATEGORIES=	net-mgmt
MASTER_SITES=	http://unix4lyfe.org/darkstat/

MAINTAINER=	emikulic@gmail.com
COMMENT=	Network statistics gatherer and reporter

USE_RC_SUBR=	darkstat

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

MAN8=	darkstat.8
PORTDOCS=	AUTHORS INSTALL README
PLIST_FILES=	sbin/darkstat
.if !defined(NOPORTDOCS)
post-install:
	@${INSTALL} -d ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${PORTDOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
