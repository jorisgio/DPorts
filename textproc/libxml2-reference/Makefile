# Created by: Jean-Yves Lefort <jylefort@FreeBSD.org>
# $FreeBSD: ports/textproc/libxml2-reference/Makefile,v 1.6 2012/11/17 06:02:02 svnexp Exp $

PORTREVISION=	0

BUILD_DEPENDS=	${NONEXISTENT}:${PORTSDIR}/textproc/libxml2:configure

PARENT_WRKSRC!=	cd ${.CURDIR}/../libxml2 && ${MAKE} -V WRKSRC
EXTRACT_ONLY=
USE_GMAKE=	yes

.if !defined(NOPORTEXAMPLES)
EXAMPLES=	testHTML.c testSAX.c testXPath.c xmllint.c
PLIST_FILES=	${EXAMPLES:S|^|%%EXAMPLESDIR%%/|}
PLIST_DIRS=	%%EXAMPLESDIR%%
.endif

do-install:
.if !defined(NOPORTDOCS)
.for d in . doc doc/devhelp doc/examples
	@cd ${PARENT_WRKSRC}/${d} && ${GMAKE} install-data-local
.endfor
.endif

.include "${.CURDIR}/../../devel/glib20-reference/bsd.gnome-reference.mk"
