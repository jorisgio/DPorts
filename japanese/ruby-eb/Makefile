# $FreeBSD: ports/japanese/ruby-eb/Makefile,v 1.29 2012/11/17 05:58:39 svnexp Exp $

PORTNAME=	eb
PORTVERSION=	2.6
PORTREVISION=	5
CATEGORIES=	japanese ruby
MASTER_SITES=	http://rubyeb.sourceforge.net/ \
		SF/rubyeb/rubyeb/rubyeb-${PORTVERSION}
DISTNAME=	ruby${PORTNAME}-${PORTVERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby bind of EB library

LIB_DEPENDS=	eb:${PORTSDIR}/japanese/eb

USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes

INSTALL_TARGET=	site-install

EXAMPLES=	hook2.rb test.rb

.include <bsd.port.pre.mk>

.if ${RUBY_VER} == 1.9
BROKEN=	does not build with ruby 1.9
.endif

PKGNAMEPREFIX:=	${PKGNAMEPREFIX}${RUBY_PKGNAMEPREFIX}

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODEXAMPLESDIR}/ja/
.for f in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/${f} ${RUBY_MODEXAMPLESDIR}/ja/
.endfor
	${MKDIR} ${RUBY_MODDOCDIR}/ja
	${INSTALL_DATA} ${WRKSRC}/eb.html ${RUBY_MODDOCDIR}/ja/
.endif

.include <bsd.port.post.mk>
