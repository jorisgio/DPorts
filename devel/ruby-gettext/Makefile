# New ports collection makefile for:	Ruby GetText Package
# Date created:		4 February 2002
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/devel/ruby-gettext/Makefile,v 1.38 2012/11/17 05:56:57 svnexp Exp $
#

PORTNAME=	gettext
PORTVERSION=	1.93.0
CATEGORIES=	devel ruby
MASTER_SITES=	${MASTER_SITE_RUBYFORGE}
MASTER_SITE_SUBDIR=	${PORTNAME}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	ruby-${PORTNAME}-package-${PORTVERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	knu@FreeBSD.org
COMMENT=	A Ruby implementation of the gettext library

#USE_GETTEXT=	yes	# not actually depends on it
USE_RUBY=	yes
USE_RUBY_FEATURES=	racc-runtime iconv
USE_RUBY_SETUP=	yes

RUBY_SHEBANG_FILES=	${WRKSRC}/samples/*.rb

DOCSDIR=	${RUBY_MODDOCDIR}
PORTDOCS=	ChangeLog NEWS README

.include <bsd.port.pre.mk>

.if ${RUBY_VER} == 1.9
BROKEN=	does not build with ruby 1.9
.endif

post-install: doc-install

doc-install:
.if !defined(NOPORTDOCS)
	cd ${WRKSRC}/samples; ${RUBY} makemo.rb
	${MKDIR} ${RUBY_MODEXAMPLESDIR}
	${CP} -R ${WRKSRC}/samples/* ${RUBY_MODEXAMPLESDIR}/
	${MKDIR} ${RUBY_MODDOCDIR}
.for f in ${PORTDOCS}
	${CP} -R ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.endif

.include <bsd.port.post.mk>
