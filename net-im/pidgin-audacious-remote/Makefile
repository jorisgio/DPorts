# New ports collection makefile for:    pidgin-audacious-remote
# Date created:         30 August 2011
# Whom:                 Anton Hryciuk <gnixua@gmail.com>
#
# $FreeBSD: ports/net-im/pidgin-audacious-remote/Makefile,v 1.5 2012/11/17 06:00:28 svnexp Exp $
#

PORTNAME=	pidgin-audacious-remote
PORTVERSION=	0.5
PORTREVISION=	2
CATEGORIES=	net-im
MASTER_SITES=	http://pidginaudacious.sourceforge.net/files/ \
		ftp://ftp.lissyara.su/users/gx_ua/distfiles/
#DISTNAME=	${PORTNAME}-${PORTVERSION}

MAINTAINER=	gnixua@gmail.com
COMMENT=	Pidgin-Audacious-Remote is a plug-in for Pidgin 2

BUILD_DEPENDS=	audacious>=2.2:${PORTSDIR}/multimedia/audacious \
		pidgin:${PORTSDIR}/net-im/pidgin
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_BZIP2=	yes

MAKE_JOBS_SAFE=	yes

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	"--prefix=${PREFIX}"

.include <bsd.port.mk>
