# Created by: thierry@pompo.net
# $FreeBSD: ports/net/neubot/Makefile,v 1.15 2012/11/20 21:27:24 svnexp Exp $

PORTNAME=	neubot
PORTVERSION=	0.4.15.6
CATEGORIES=	net
MASTER_SITES=	http://releases.neubot.org/_packages/

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Measures neutrality of your network connection in the background

LICENSE=	GPLv3

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/_sqlite3.so:${PORTSDIR}/databases/py-sqlite3

USE_PYTHON=	2.5-2.9

NO_BUILD=	yes

USERS=		_neubot
GROUPS=		_neubot
LSTATEDIR=	/var
STATEDIR=	${LSTATEDIR}/${PORTNAME}
MAKE_ENV=	LOCALSTATEDIR=${LSTATEDIR} MANDIR=${MANPREFIX}/man

USE_RC_SUBR=	neubotd
INSTALLS_ICONS=	yes

MAN1=		neubot.1
MANCOMPRESSED=	yes
PORTDOCS=	AUTHORS BUGS ChangeLog PRIVACY README.rst TODO

SUB_FILES=	pkg_message
SUB_LIST+=	PYTHON_CMD=${PYTHON_CMD}
PLIST_SUB+=	STATEDIR=${STATEDIR}
PKGMESSAGE=	${WRKDIR}/pkg_message

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${DOCSDIR}
	@${CAT} ${PKGMESSAGE}
.endif

.include <bsd.port.mk>
