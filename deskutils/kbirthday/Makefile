# New ports collection makefile for:    KBirthday
# Date created:                         2003/04/12
# Whom:                                 Heiner <h.eichmann@gmx.de>
#
# $FreeBSD: ports/deskutils/kbirthday/Makefile,v 1.26 2012/12/30 18:55:45 svnexp Exp $

PORTNAME=	kbirthday
PORTVERSION=	0.7.3
PORTREVISION=	9
CATEGORIES=	deskutils kde
MASTER_SITES=	http://www.gfai.de/~jaham/download/ \
		http://freshmeat.net/redir/kbirthday/32531/url_tgz/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	KDE kicker-applet that reminds you of birthdays and anniversaries

DEPRECATED=	Depends on QT3; unmaintained
EXPIRATION_DATE=	2013-07-01

USE_AUTOTOOLS=	libtool
USE_GMAKE=	yes
USE_KDELIBS_VER=3
USE_LDCONFIG=	yes
# may or may not solve the alpha compilation issue....
CONFIGURE_ARGS=	--with-pic

# necesary to access the second master site by getting rid of the default switch -A
FETCH_CMD ?=/usr/bin/fetch -Rr

post-patch:
	${REINPLACE_CMD} -e "s,-Wmissing-prototypes,-fPIC," ${WRKSRC}/configure

.include <bsd.port.mk>
