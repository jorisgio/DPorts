# New ports collection makefile for:	tkcron-2.12
# Date created:		30 July 1996
# Whom:			Sander Vesik <sander@haldjas.folklore.ee>
#
# $FreeBSD: ports/misc/tkcron/Makefile,v 1.19 2012/11/17 05:59:45 svnexp Exp $
#

PORTNAME=	tkcron
PORTVERSION=	2.12
PORTREVISION=	1
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.tcl.tk/pub/tcl/mirror/ftp.procplace.com/sorted/packages-7.6/misc/tkcron-2.12/ \
		http://ftp.sunet.se/pub/lang/tcl/sorted/packages-7.6/misc/tkcron-2.12/ \
		http://ftp4.de.freesbie.org/pub/misc/x11/tcl/ftp.gmd.de/contrib/sorted/misc/tkcron-2.12/ \
		http://komquats.com/distfiles/ \
		http://people.freebsd.org/~cy/distfiles/
EXTRACT_SUFX=	.tcl.gz

MAINTAINER=	cy@FreeBSD.org
COMMENT=	A frontend to crontab

RUN_DEPENDS=	wish8.5:${PORTSDIR}/x11-toolkits/tk85 \
		wish:${PORTSDIR}/x11-toolkits/tk-wrapper 

EXTRACT_CMD=	${GZIP_CMD}
EXTRACT_BEFORE_ARGS= -cd
EXTRACT_AFTER_ARGS= > tkcron.tcl
NO_WRKSUBDIR=	yes
PLIST_FILES=	bin/tkcron

post-extract:
	@${CP} ${FILESDIR}/Makefile ${WRKSRC}

.include <bsd.port.mk>
