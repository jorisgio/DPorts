# New ports collection makefile for:	libopensync-plugin-evolution2
# Date created:				18 July 2008
# Whom:					Alexander Logvinov <ports@logvinov.com>
#
# $FreeBSD: ports/deskutils/libopensync-plugin-evolution2/Makefile,v 1.10 2012/11/17 05:55:29 svnexp Exp $
#

PORTNAME=	libopensync-plugin-evolution2
PORTVERSION=	0.22
PORTREVISION=	7
CATEGORIES=	deskutils
MASTER_SITES=	http://www.opensync.org/download/releases/${PORTVERSION}/

MAINTAINER=	webmaster@kibab.com
COMMENT=	Evolution 2 plugin for the OpenSync framework

LIB_DEPENDS=	opensync.0:${PORTSDIR}/devel/libopensync022

CONFLICTS=	libopensync-plugin-evolution2-devel-[0-9]*

USE_BZIP2=	yes
GNU_CONFIGURE=	yes
USE_GNOME=	evolutiondataserver gconf2

.include <bsd.port.mk>
