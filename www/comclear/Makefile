# New ports collection makefile for:	comclear
# Date created:		26 November 2000
# Whom:			roam@FreeBSD.org
#
# $FreeBSD: ports/www/comclear/Makefile,v 1.21 2012/11/17 06:02:30 svnexp Exp $
#

PORTNAME=	comclear
PORTVERSION=	1.2
PORTREVISION=	2
CATEGORIES=	www
MASTER_SITES=	http://www.neuro-tech.net/files/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	A history cleaner for Netscape Navigator and Communicator

WANT_GNOME=	yes
USE_GMAKE=	yes
USE_AUTOTOOLS=	automake14 autoconf213

.include <bsd.port.pre.mk>

.if ${HAVE_GNOME:Mgtk12}!=""
USE_GNOME+=	gtk12
PKGNAMESUFFIX=	-gtk
.endif

# Do not install docs by default, see the ifdef'd post-install below.
post-configure:
		${REINPLACE_CMD} 's/^install-data-am:.*/install-data-am:/' ${WRKSRC}/Makefile

.if		!defined(NOPORTDOCS)
post-install:
		cd ${WRKSRC} && ${GMAKE} install-docDATA
.endif

.include <bsd.port.post.mk>
