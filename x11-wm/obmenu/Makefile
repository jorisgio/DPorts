# $FreeBSD: ports/x11-wm/obmenu/Makefile,v 1.11 2012/11/17 06:03:43 svnexp Exp $

PORTNAME=	obmenu
PORTVERSION=	1.0
PORTREVISION=	5
CATEGORIES=	x11-wm
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Menu manager for Openbox supporting both static and pipe menus

USE_GNOME=		pygtk2
USE_PYTHON=		yes
USE_PYDISTUTILS=	yes
PYDISTUTILS_PKGNAME=	obMenu

PORTDOCS=	README

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
