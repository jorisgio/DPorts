# New ports collection makefile for:	umit
# Date created:				20 April 2007
# Whom:					Elisey Savateev <b3k@mail.ru>
#
# $FreeBSD: ports/security/umit/Makefile,v 1.15 2012/11/17 06:01:22 svnexp Exp $
#

PORTNAME=	umit
PORTVERSION=	1.0
PORTREVISION=	1
CATEGORIES=	security
MASTER_SITES=	SF
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ayu@commun.jp
COMMENT=	UMIT is the nmap frontend developed with Python and PyGTK

RUN_DEPENDS=	${LOCALBASE}/bin/nmap:${PORTSDIR}/security/nmap \
		${PYTHON_SITELIBDIR}/_sqlite3.so:${PORTSDIR}/databases/py-sqlite3

INSTALLS_ICONS=	yes
USE_BZIP2=	yes
USE_GNOME=	pygtk2
USE_PYTHON=	2.5+
USE_PYDISTUTILS=	yes

.include <bsd.port.pre.mk>

.if ${ARCH} != "i386" || ${PYTHON_REL} > 260
WITHOUT_PSYCO=	yes
.endif

.ifndef(WITHOUT_PSYCO)
RUN_DEPENDS+=	${PYTHON_SITELIBDIR}/psyco/_psyco.so:${PORTSDIR}/devel/py-psyco
.endif

pre-everything::
.ifndef(WITHOUT_PSYCO)
	@${ECHO_MSG} '===> Define WITHOUT_PSYCO to disable devel/py-psyco optimization'
.endif

post-patch:
	${REINPLACE_CMD} 's/self.build_html_doc()//' ${WRKSRC}/setup.py

.include <bsd.port.post.mk>
