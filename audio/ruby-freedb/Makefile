# New ports collection makefile for:	Ruby/Freedb
# Date created:		16 January 2002
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/audio/ruby-freedb/Makefile,v 1.21 2012/11/17 05:54:43 svnexp Exp $
#

PORTNAME=	freedb
PORTVERSION=	0.5
CATEGORIES=	audio net ruby
MASTER_SITES=	RF
MASTER_SITE_SUBDIR=	ruby-${PORTNAME}
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DISTNAME=	ruby-${PORTNAME}-${PORTVERSION}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	A Ruby library that provides access to Freedb/CDDB servers

USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes

INSTALL_TARGET=	site-install

DOCS=		CHANGELOG	README	doc
EXAMPLES=	examples/*.rb

post-patch:
	${REINPLACE_CMD} -E -e "s,RSTRING\(([^)]+)\)->ptr,RSTRING_PTR(\1),g" ${WRKSRC}/freedb_cdrom.c

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODDOCDIR}
	${MKDIR} ${RUBY_MODEXAMPLESDIR}
	${INSTALL_DATA} ${EXAMPLES:S,^,${WRKSRC}/,} ${RUBY_MODEXAMPLESDIR}/
	@(cd ${WRKSRC}/ && ${COPYTREE_SHARE} "${DOCS}" ${RUBY_MODDOCDIR}/)
.endif

.include <bsd.port.mk>
