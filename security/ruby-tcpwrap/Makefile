# New ports collection makefile for:	Ruby-tcpwrap
# Date created:		15 Aug 2000
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/security/ruby-tcpwrap/Makefile,v 1.19 2012/11/17 06:01:19 svnexp Exp $
#

PORTNAME=	tcpwrap
PORTVERSION=	0.6
PORTREVISION=	1
CATEGORIES=	security ruby
MASTER_SITES=	http://shugo.net/archive/ruby-tcpwrap/
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	ruby-${PORTNAME}-${PORTVERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	TCP wrappers library for Ruby

LIB_DEPENDS=	ident.0:${PORTSDIR}/security/libident

USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes

WRKSRC=		${WRKDIR}/ruby-${PORTNAME}
CONFIGURE_ARGS=	--with-libwrap-dir="/usr" \
		--with-ident-dir="${LOCALBASE}"

INSTALL_TARGET=	site-install

DOCS_EN=	README.en	doc/tcpwrap.html.en
DOCS_JA=	README.ja	doc/tcpwrap.html.ja

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODEXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/sample/echod.rb ${RUBY_MODEXAMPLESDIR}/
	${MKDIR} ${RUBY_MODDOCDIR}/ja
.for f in ${DOCS_EN}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.for f in ${DOCS_JA}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/ja/
.endfor
.endif

.include <bsd.port.pre.mk>
.if ${RUBY_VER} == 1.9
BROKEN=	does not build with ruby 1.9
.endif
.include <bsd.port.post.mk>
