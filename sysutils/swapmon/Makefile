# ports collection makefile for: swapmon
# Date Created:		27 July 2010
# Whom:                 Alexander Kuehn <freebsd@nagilum.org>
#
# $FreeBSD: ports/sysutils/swapmon/Makefile,v 1.3 2012/11/17 06:01:47 svnexp Exp $
#

PORTNAME=	swapmon
PORTVERSION=	1.5
CATEGORIES=	sysutils
MASTER_SITES=	# none
DISTFILES=	# none

MAINTAINER=	freebsd@nagilum.org
COMMENT=	Add/remove swapspace as needed

LICENSE=	BSD

NO_BUILD=	yes
MAN1=		${PORTNAME}.1

USE_RC_SUBR=	${PORTNAME}

PLIST_FILES=	sbin/${PORTNAME}

do-install:
	@${SED} -e 's|%%PREFIX%%|${PREFIX}|g' ${FILESDIR}/${PORTNAME}.sh.in \
		> ${WRKDIR}/${PORTNAME}.sh
	${INSTALL_SCRIPT} ${WRKDIR}/${PORTNAME}.sh ${PREFIX}/sbin/${PORTNAME}
	${INSTALL_MAN} ${FILESDIR}/${PORTNAME}.1 ${PREFIX}/man/man1

post-install:
	@${ECHO_MSG}	""
	@${ECHO_MSG}	"To have swapmon run automatically after each boot"
	@${ECHO_MSG}	"execute the following command as root:"
	@${ECHO_MSG}	""
	@${ECHO_MSG}	"  echo '${PORTNAME}_enable=\"YES\"' >>/etc/rc.conf"
	@${ECHO_MSG}	""

.include <bsd.port.mk>
