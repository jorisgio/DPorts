# $FreeBSD: ports/ftp/atftp/Makefile,v 1.5 2012/11/21 05:49:17 svnexp Exp $

PORTNAME=	atftp
PORTVERSION=	0.7
PORTREVISION=	3
CATEGORIES=	ftp
MASTER_SITES=	${MASTER_SITE_DEBIAN}
MASTER_SITE_SUBDIR=	pool/main/a/${PORTNAME}
DISTNAME=	${PORTNAME}_${PORTVERSION}.dfsg.orig

MAINTAINER=	kevlo@FreeBSD.org
COMMENT=	Advanced tftp server and client

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}.dfsg

USE_RC_SUBR=	atftpd
GNU_CONFIGURE=	yes

PLIST_FILES=	bin/atftp \
		sbin/atftpd

MAN1=		atftp.1
MAN8=		atftpd.8

.include <bsd.port.mk>
