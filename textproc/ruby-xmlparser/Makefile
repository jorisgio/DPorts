# New ports collection makefile for:	Ruby-xmlparser
# Date created:		9 Aug 2000
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/textproc/ruby-xmlparser/Makefile,v 1.32 2012/11/17 06:02:20 svnexp Exp $
#

PORTNAME=	xmlparser
PORTVERSION=	0.7.2
CATEGORIES=	textproc ruby
MASTER_SITES=	http://www.yoshidam.net/
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DIST_SUBDIR=	ruby

MAINTAINER=	ruby@FreeBSD.org
COMMENT=	Ruby module to access James Clark XML Parser ToolKit ("expat")

BUILD_DEPENDS=	p5-XML-Parser>=0:${PORTSDIR}/textproc/p5-XML-Parser
LIB_DEPENDS=	expat.6:${PORTSDIR}/textproc/expat2
RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR}/uconv.so:${PORTSDIR}/japanese/ruby-uconv \
		p5-XML-Parser>=0:${PORTSDIR}/textproc/p5-XML-Parser
# to utilize encoding maps included in p5-XML-Parser

USE_PERL5=	yes
USE_RUBY=	yes
USE_RUBY_EXTCONF=	yes

WRKSRC=		${WRKDIR}/${PORTNAME}
CONFIGURE_ARGS=	--with-perl-enc-map=${SITE_PERL}/${PERL_ARCH}/XML/Parser/Encodings
INSTALL_TARGET=	site-install

post-extract:
	${FIND} ${WRKSRC} -name CVS -type d -exec ${RM} -r {} ';' -prune

post-patch:
	${RUBY} -i -pe 'gsub /%%PREFIX%%/, "${PREFIX}"' ${WRKSRC}/lib/wget.rb

post-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODDOCDIR}/ja/
	${INSTALL_DATA} ${WRKSRC}/README ${RUBY_MODDOCDIR}/
	${INSTALL_DATA} ${WRKSRC}/README.ja ${RUBY_MODDOCDIR}/ja/
.endif

.include <bsd.port.mk>
