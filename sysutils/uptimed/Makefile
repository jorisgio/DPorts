# New ports collection makefile for:	uptimed
# Date created:				23 July 2002
# Whom:					Andy Fawcett <andy@athame.co.uk>
#
# $FreeBSD: ports/sysutils/uptimed/Makefile,v 1.22 2012/12/04 21:46:37 svnexp Exp $

PORTNAME=	uptimed
PORTVERSION=	0.3.16
PORTREVISION=	2
CATEGORIES=	sysutils
MASTER_SITES=	http://podgorny.cz/uptimed/releases/ \
		http://www.predatorlabs.net/dl/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Uptime daemon

MAKE_JOBS_SAFE=	yes

USE_RC_SUBR=	${PORTNAME}
USE_LDCONFIG=	yes
USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GMAKE=	yes
USE_AUTOTOOLS=	libtool aclocal
ACLOCAL_ARGS=	# empty

MAN1=		uprecords.1
MAN8=		uptimed.8

post-patch:
	@${REINPLACE_CMD} -e 's|/usr/lib/sendmail|/usr/sbin/sendmail|' ${WRKSRC}/etc/uptimed.conf-dist
	@${REINPLACE_CMD} -e 's|/var/run/uptimed|/var/run/uptimed.pid|' ${WRKSRC}/etc/uptimed.conf-dist

post-install:
	${MKDIR} ${PREFIX}/www/cgi-bin
	${MKDIR} /var/spool/uptimed
	${INSTALL_PROGRAM}	${PREFIX}/bin/uprecords ${PREFIX}/www/cgi-bin/uprecords.cgi
	${INSTALL_DATA}		${WRKSRC}/sample-cgi/* ${PREFIX}/www/cgi-bin/

.include <bsd.port.mk>
