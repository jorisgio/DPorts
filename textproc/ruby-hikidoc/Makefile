# New ports collection makefile for:	ruby-hikidoc
# Date created:		2011-07-30
# Whom:			TAKATSU Tomonari <tota@FreeBSD.org>
#
# $FreeBSD: ports/textproc/ruby-hikidoc/Makefile,v 1.2 2012/11/17 06:02:19 svnexp Exp $
#

PORTNAME=	hikidoc
PORTVERSION=	0.0.6
CATEGORIES=	textproc ruby
MASTER_SITES=	RF
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
EXTRACT_SUFX=	.tgz
DIST_SUBDIR=	${RUBY_PKGNAMEPREFIX:S|${RUBY_SUFFIX}-||}

MAINTAINER=	tota@FreeBSD.org
COMMENT=	A text-to-HTML conversion tool for web writers

USE_RUBY=	yes
USE_RUBY_SETUP=	yes
RUBY_SHEBANG_FILES=	bin/hikidoc

PORTDOCS=	NEWS NEWS.ja README README.ja \
		TextFormattingRules TextFormattingRules.ja

PLIST_FILES=	bin/hikidoc \
		%%RUBY_SITELIBDIR%%/hikidoc.rb

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
.for f in ${PORTDOCS}
	@${INSTALL_DATA} ${INSTALL_WRKSRC}/${f} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
