# New ports collection makefile for:	diffutils
# Date created:				5 September 2001
# Whom:				Garrett Rooney <rooneg@electricjellyfish.net>
#
# $FreeBSD: ports/textproc/diffutils/Makefile,v 1.16 2012/11/17 06:01:54 svnexp Exp $
#

PORTNAME=	diffutils
PORTVERSION=	3.2
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR=	diffutils

MAINTAINER=	johans@FreeBSD.org
COMMENT=	The GNU diff utilities

LIB_DEPENDS=	sigsegv:${PORTSDIR}/devel/libsigsegv

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--program-prefix=g

INFO=		diffutils
MAN1=		gcmp.1 gdiff.1 gdiff3.1 gsdiff.1

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MNLS}
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.else
CONFIGURE_ARGS+=--disable-nls
PLIST_SUB+=	NLS="@comment "
.endif

.include <bsd.port.mk>
