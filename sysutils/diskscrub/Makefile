# New ports collection makefile for:	diskscrub
# Date created:		28 November 2006
# Whom:			Erik Greenwald <erik@smluc.org>
#
# $FreeBSD: ports/sysutils/diskscrub/Makefile,v 1.6 2012/11/17 06:01:28 svnexp Exp $
#

PORTNAME=	diskscrub
PORTVERSION=	2.2
CATEGORIES=	sysutils
MASTER_SITES=	GOOGLE_CODE
DISTNAME=	scrub-${PORTVERSION}

MAINTAINER=	erik@bz.bzflag.bz
COMMENT=	Writes patterns on files to make retrieving the data more difficult

GNU_CONFIGURE=	yes
USE_BZIP2=	yes

MAN1=	scrub.1

PLIST_FILES=	bin/scrub

.include <bsd.port.mk>
