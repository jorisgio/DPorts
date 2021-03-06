# New ports collection makefile for:	Ruby/htree
# Date created:		3 May 2004
# Whom:			Akinori MUSHA aka knu <knu@idaemons.org>
#
# $FreeBSD: ports/textproc/ruby-htree/Makefile,v 1.14 2012/11/17 06:02:19 svnexp Exp $
#

PORTNAME=	htree
PORTVERSION=	0.8
CATEGORIES=	textproc www ruby
MASTER_SITES=	http://www.a-k-r.org/htree/
PKGNAMEPREFIX=	${RUBY_PKGNAMEPREFIX}
DIST_SUBDIR=	ruby

MAINTAINER=	knu@FreeBSD.org
COMMENT=	A Ruby library to manipulate HTML/XML tree data structure

USE_RUBY=	yes
USE_RUBY_RD2=		yes
USE_RUBY_RDOC=		yes

LIB_FILES=	htree.rb htree

DOCS=		README \
		${RUBY_RD_HTML_FILES} \
		doc

RUBY_REQUIRE=	Ruby >= 180

.include <bsd.port.pre.mk>

.if !defined(RUBY_PROVIDED)
IGNORE=		only works with Ruby 1.8.0 or later
.endif

do-build:
.if !defined(NOPORTDOCS)
	cd ${BUILD_WRKSRC}; ${RUBY_RDOC} ${LIB_FILES}
.endif

do-install: doc-install
	cd ${INSTALL_WRKSRC}; ${CP} -R ${LIB_FILES} ${RUBY_SITELIBDIR}/

doc-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${RUBY_MODDOCDIR}
.for f in ${DOCS}
	${CP} -R ${WRKSRC}/${f} ${RUBY_MODDOCDIR}/
.endfor
.endif

post-install:
.if !defined(NOPORTDOCS)
	@${FIND} -ds ${RUBY_MODDOCDIR} -type f -print | ${SED} -E -e \
		's,^${PREFIX}/?,,' >> ${TMPPLIST}
	@${FIND} -ds ${RUBY_MODDOCDIR} -type d -print | ${SED} -E -e \
		's,^${PREFIX}/?,@dirrm ,' >> ${TMPPLIST}
	@${ECHO_CMD} "@unexec rmdir %D/share/doc/${RUBY_NAME} \
		2>/dev/null || true" >> ${TMPPLIST}
.endif

.include <bsd.port.post.mk>
