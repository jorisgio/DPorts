# New ports collection makefile for:	sshsudo
# Date created:				2012-02-06
# Whom:					Hung-Yi Chen <gaod@hychen.org>
#
# $FreeBSD: ports/sysutils/sshsudo/Makefile,v 1.2 2012/11/17 06:01:46 svnexp Exp $
#

PORTNAME=	sshsudo
PORTVERSION=	1.0
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	#
EXTRACT_ONLY=	#

MAINTAINER=	gaod@hychen.org
COMMENT=	A bash script to run sudo command on multiple remote computers

LICENSE=	GPLv3

RUN_DEPENDS=	${LOCALBASE}/bin/bash:${PORTSDIR}/shells/bash \
		sshpass>=0:${PORTSDIR}/security/sshpass

PROJECTHOST=	sshsudo

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

PLIST_FILES=	bin/sshsudo

post-patch:
	${SED} -e "s,/bin/bash,${LOCALBASE}/bin/bash," -e "s,mktemp,mktemp -t sshsudo," \
	<${DISTDIR}/${DISTNAME} >${WRKSRC}/${DISTNAME}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME} ${PREFIX}/bin/

.include <bsd.port.mk>
