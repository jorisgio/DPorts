# New ports collection makefile for:	cjc
# Date created:		19 April 2006
# Whom:			Andrew Pantyukhin <infofarmer@FreeBSD.org>
#
# $FreeBSD: ports/net-im/cjc/Makefile,v 1.11 2012/11/17 06:00:26 svnexp Exp $
#

PORTNAME=	cjc
PORTVERSION=	1.2.1
CATEGORIES=	net-im python
MASTER_SITES=	http://cloud.github.com/downloads/Jajcus/cjc/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	The Console Jabber Client

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pyxmpp>=1.1.0:${PORTSDIR}/net-im/py-pyxmpp

USE_PYTHON=	2.6+

post-patch:
	@${GREP} -lR "/usr/bin/python" ${WRKSRC} | ${XARGS} \
		${REINPLACE_CMD} -e "s|/usr/bin/python|${PYTHON_CMD}|"
	@${REINPLACE_CMD} -e \
		"s|prefix=.*|prefix=${PREFIX}| ; \
		 /pkg_docdir/s|^|#|g ; \
		 s|INSTALL=.*|INSTALL=${INSTALL}| ; \
		 s|INSTALL_DATA=.*|INSTALL_DATA=${INSTALL_DATA}| ; \
		 s|INSTALL_DIR=.*|INSTALL_DIR=${MKDIR}|g" ${WRKSRC}/Makefile

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/manual.html ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/TODO ${DOCSDIR}
.endif

.include <bsd.port.mk>
