# New ports collection makefile for:	pcrs
# Date created:				31 July 2005
# Whom:					Ken Wong <wongk@apt.homeunix.net>
#
# $FreeBSD: ports/textproc/pcrs/Makefile,v 1.6 2012/12/10 19:24:05 svnexp Exp $
#

PORTNAME=	pcrs
PORTVERSION=	0.0.3
PORTREVISION=	2
CATEGORIES=	textproc
MASTER_SITES=	http://distfiles.master.finkmirrors.net/\
		http://download.mirror.ac.uk/mirror/master.us.finkmirrors.net/distfiles/\
		http://mirror.phy.olemiss.edu/mirror/fink/distfiles/
DISTNAME=	${PORTNAME}-${PORTVERSION}-src

MAINTAINER=	wongk@apt.homeunix.net
COMMENT=	Perl compatible regular expression based substitutions

LIB_DEPENDS=	pcre.3:${PORTSDIR}/devel/pcre

WRKSRC=		${WRKDIR}/${PORTNAME}-${PORTVERSION}

GNU_CONFIGURE=	yes
USE_GMAKE=	yes

USE_LDCONFIG=	yes

MAN3=		pcrs.3
PLIST_FILES=	bin/pcrsed \
		lib/libpcrs.a \
		lib/libpcrs.so \
		lib/libpcrs.so.0

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pcrsed ${PREFIX}/bin

.include <bsd.port.mk>
