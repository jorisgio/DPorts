# Created by: Dario Freni <saturnero@gufi.org>
# $FreeBSD: ports/lang/python-mode.el/Makefile,v 1.7 2012/12/04 20:13:16 svnexp Exp $

PORTNAME=	python-mode.el
PORTVERSION=	1.0
PORTREVISION=	1
PORTEPOCH=	1
CATEGORIES=	lang elisp python
MASTER_SITES=	SF/python-mode/OldFiles
DISTNAME=	python-mode-${PORTVERSION}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Emacs lisp module for the Python language

NO_BUILD=	yes

CONFLICTS=	python-2.4.[012]*
EMACSLISPDIR=	${PREFIX}/share/emacs/site-lisp
XEMACSLISPDIR=	${PREFIX}/lib/xemacs/site-lisp

LISPFILES=	doctest-mode.el pycomplete.el pycomplete.py python-mode.el

do-install:
	${MKDIR} ${EMACSLISPDIR}
	${MKDIR} ${XEMACSLISPDIR}
	for i in ${LISPFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${i} ${EMACSLISPDIR}/$${i}; \
		${LN} -sf ${EMACSLISPDIR}/$${i} ${XEMACSLISPDIR}; \
	done;

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
