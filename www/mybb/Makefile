# New ports collection makefile for:	www/mybb
# Date created:		2008-09-15
# Whom:			Martin Wilke <miwi@FreeBSD.org>
#
# $FreeBSD: ports/www/mybb/Makefile,v 1.17 2012/11/17 06:02:43 svnexp Exp $
#

PORTNAME=	mybb
PORTVERSION=	1.6.6
CATEGORIES=	www
MASTER_SITES=	http://cloud.github.com/downloads/mybb/mybb16/
DISTNAME=	${PORTNAME}_1606

MAINTAINER=	miwi@FreeBSD.org
COMMENT=	A PHP-based bulletin board / discussion forum system

NO_BUILD=	yes
USE_ZIP=	yes
USE_PHP=	xsl mysql iconv gd xml
USE_MYSQL=	yes
WRKSRC=		${WRKDIR}/Upload/
SUB_FILES=	pkg-message
WWWDIR?=	${PREFIX}/www/${PORTNAME}

.include <bsd.port.pre.mk>

do-install:
	@${MKDIR} ${WWWDIR}
	${CP} -R ${WRKSRC}/ ${WWWDIR}
	${TOUCH} ${WWWDIR}/inc/config.php
	@${CHOWN} ${WWWOWN} ${WWWDIR}/inc/config.php ${WWWDIR}/inc/settings.php
	@${CAT} ${PKGMESSAGE}

create-plist:
	@${FIND} -s ${WRKSRC}/${file} -not -type d \
		| ${SED} -e 's,^${WRKSRC},%%WWWDIR%%,' > ${PLIST}
	@${ECHO_CMD} '@exec touch %D/%%WWWDIR%%/inc/config.php;chown ${WWWOWN} %D/%%WWWDIR%%/inc/config.php' >> ${PLIST}
	@${ECHO_CMD} '@unexec if [ ! -s %D/%%WWWDIR%%/inc/config.php ];then rm -f %D/%%WWWDIR%%/inc/config.php;fi' >> ${PLIST}
	@${FIND} -ds ${WRKSRC}/${file} -type d \
	| ${SED} -e 's,^${WRKSRC},@dirrm %%WWWDIR%%,' >> ${PLIST}

.include <bsd.port.post.mk>
