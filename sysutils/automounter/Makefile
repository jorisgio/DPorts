# New ports collection makefile for:	automounter
# Date created:		26 March 2008
# Whom:			Dominic Fandrey <kamikaze@bsdforen.de>
#
# $FreeBSD: ports/sysutils/automounter/Makefile,v 1.14 2012/11/17 06:01:25 svnexp Exp $
#

PORTNAME=	automounter
PORTVERSION=	1.4.4
CATEGORIES=	sysutils
MASTER_SITES=	SF/bsdadminscripts/${PORTNAME}

MAINTAINER=	kamikaze@bsdforen.de
COMMENT=	Provides scripts to dynamically configure amd

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}/src
NO_BUILD=	yes
MANCOMPRESSED=	yes

MAN5=		${PORTNAME}.conf.5
MAN8=		${PORTNAME}.8

plist: patch
		@cd ${WRKSRC}; ./plist.sh -nodoc > ${PLIST}
		@${ECHO} "@dirrmtry etc/devd" >> ${PLIST}

do-install:
		@cd ${WRKSRC}; ./install.sh -prefix=${PREFIX}

post-install:
		@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
