# New ports collection makefile for:   doc-mode.el
# Date created:		2 May 2008
# Whom:			Peter Schuller <peter.schuller@infidyne.com>
#
# $FreeBSD: ports/textproc/doc-mode.el/Makefile,v 1.14 2012/11/17 06:01:54 svnexp Exp $
#

PORTNAME=	doc-mode.el
PORTVERSION=	1.1
PORTREVISION=	10
CATEGORIES=	textproc elisp
MASTER_SITES=	SF/xpt/doc-mode/doc-mode-${PORTVERSION}
DISTNAME=	doc-mode-${PORTVERSION}
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Asciidoc fontlocking for emacs

USE_EMACS=	yes
NO_BUILD=	yes

do-install:
	${INSTALL_DATA} ${WRKSRC}/doc-mode.el ${PREFIX}/${EMACS_SITE_LISPDIR}/doc-mode.el

.include <bsd.port.mk>
