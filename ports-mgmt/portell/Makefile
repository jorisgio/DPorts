# New ports collection makefile for:   portell
# Date created:        Wed Jan 08 13:25:35 GMT 2003
# Whom:                mich@freebsdcluster.org
#
# $FreeBSD: ports/ports-mgmt/portell/Makefile,v 1.17 2012/11/17 06:00:46 svnexp Exp $
#

PORTNAME=	portell
PORTVERSION=	0.2
PORTREVISION=	1
CATEGORIES=	ports-mgmt
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}%20${PORTVERSION}

MAINTAINER=	mich@FreeBSD.org
COMMENT=	Quick display of FreeBSD port descriptions

USE_ZIP=	yes
USE_PYTHON=	yes
NO_BUILD=	yes

PLIST_FILES=	bin/portell
PORTDOCS=	README.txt

post-extract:
	${REINPLACE_CMD} -e 's/[[:cntrl:]]*$$//' ${WRKSRC}/portell.py
	${REINPLACE_CMD} -e 's/free/freebsd/' ${WRKSRC}/portell.py
	${REINPLACE_CMD} -e 's/portell.py/portell/' ${WRKSRC}/README.txt

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/portell.py ${PREFIX}/bin/portell
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.txt ${DOCSDIR}
.endif

post-install:
.if !defined(BATCH)
	@${ECHO_MSG} ""
	@${ECHO_MSG} "###############################################################################"
	@${ECHO_MSG} "# You must run 'portell -u' to initialize the DB"
	@${ECHO_MSG} "# ${DOCSDIR}/README.txt for more information."
	@${ECHO_MSG} "###############################################################################"
	@${ECHO_MSG} ""
.endif

.include <bsd.port.mk>
