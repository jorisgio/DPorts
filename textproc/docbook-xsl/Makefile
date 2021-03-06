# $FreeBSD: ports/textproc/docbook-xsl/Makefile,v 1.57 2012/11/17 06:01:54 svnexp Exp $

PORTNAME=	docbook-xsl
PORTVERSION=	1.76.1
CATEGORIES=	textproc
MASTER_SITES=	SF/docbook/${PORTNAME}/${PORTVERSION}:src \
		SF/docbook/${PORTNAME}-doc/${PORTVERSION}:doc
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}:src

MAINTAINER=	skv@FreeBSD.org
COMMENT=	XSL DocBook stylesheets

BUILD_DEPENDS=	xmlcatmgr:${PORTSDIR}/textproc/xmlcatmgr
RUN_DEPENDS=	docbook>=0:${PORTSDIR}/textproc/docbook \
		xmlcatmgr:${PORTSDIR}/textproc/xmlcatmgr

.if !defined(NOPORTDOCS)
DISTFILES+=	${PORTNAME}-doc-${PORTVERSION}${EXTRACT_SUFX}:doc
.endif

USE_BZIP2=	yes
NO_BUILD=	yes

INSTDIR=	share/xsl/docbook
PKGINSTALL=	${WRKDIR}/pkg-install
PKGDEINSTALL=	${WRKDIR}/pkg-deinstall

SUB_FILES=	pkg-install pkg-deinstall
SUB_LIST+=	INSTDIR="${INSTDIR}" \
		XMLCATMGR="${XMLCATMGR}" \
		CATALOG_PORTS="${LOCALBASE}/share/xml/catalog.ports"

XMLCATMGR=	${LOCALBASE}/bin/xmlcatmgr

MODULES=	common fo html images lib manpages params xhtml

OPTIONS=	ECLIPSE		"Eclipse modules"		on \
		EPUB		"Epub modules"			on \
		EXTENSIONS	"Extensions"			on \
		HIGHLIGHTING	"highlighting modules"		on \
		HTMLHELP	"HTML Help modules"		on \
		JAVAHELP	"Java Help modules"		on \
		PROFILING	"Profiling modules"		on \
		ROUNDTRIP	"Roundtrip modules"		on \
		SLIDES		"Slides modules"		on \
		TEMPLATE	"Templates"			on \
		TESTS		"Test tools"			on \
		TOOLS		"Tools"				on \
		WEBSITE		"Website modules"		on \
		XHTML11		"XHTML 1.1 modules"		on

.include <bsd.port.pre.mk>

.if defined(WITH_ECLIPSE)
PLIST_SUB+=	ECLIPSE=""
MODULES+=	eclipse
.else
PLIST_SUB+=	ECLIPSE="@comment "
.endif
.if defined(WITH_EPUB)
PLIST_SUB+=	EPUB=""
MODULES+=	epub
.else
PLIST_SUB+=	EPUB="@comment "
.endif
.if defined(WITH_EXTENSIONS)
PLIST_SUB+=	EXTENSIONS=""
MODULES+=	extensions
.else
PLIST_SUB+=	EXTENSIONS="@comment "
.endif
.if defined(WITH_HIGHLIGHTING)
PLIST_SUB+=	HIGHLIGHTING=""
MODULES+=	highlighting
.else
PLIST_SUB+=	HIGHLIGHTING="@comment "
.endif
.if defined(WITH_HTMLHELP)
PLIST_SUB+=	HTMLHELP=""
MODULES+=	htmlhelp
.else
PLIST_SUB+=	HTMLHELP="@comment "
.endif
.if defined(WITH_JAVAHELP)
PLIST_SUB+=	JAVAHELP=""
MODULES+=	javahelp
.else
PLIST_SUB+=	JAVAHELP="@comment "
.endif
.if defined(WITH_PROFILING)
PLIST_SUB+=	PROFILING=""
MODULES+=	profiling
.else
PLIST_SUB+=	PROFILING="@comment "
.endif
.if defined(WITH_ROUNDTRIP)
PLIST_SUB+=	ROUNDTRIP=""
MODULES+=	roundtrip
.else
PLIST_SUB+=	ROUNDTRIP="@comment "
.endif
.if defined(WITH_SLIDES)
PLIST_SUB+=	SLIDES=""
MODULES+=	slides
.else
PLIST_SUB+=	SLIDES="@comment "
.endif
.if defined(WITH_TEMPLATE)
PLIST_SUB+=	TEMPLATE=""
MODULES+=	template
.else
PLIST_SUB+=	TEMPLATE="@comment "
.endif
.if defined(WITH_TESTS)
PLIST_SUB+=	TESTS=""
MODULES+=	tests
.else
PLIST_SUB+=	TESTS="@comment "
.endif
.if defined(WITH_TOOLS)
PLIST_SUB+=	TOOLS=""
MODULES+=	tools
.else
PLIST_SUB+=	TOOLS="@comment "
.endif
.if defined(WITH_WEBSITE)
PLIST_SUB+=	WEBSITE=""
MODULES+=	website
.else
PLIST_SUB+=	WEBSITE="@comment "
.endif
.if defined(WITH_XHTML11)
PLIST_SUB+=	XHTML11=""
MODULES+=	xhtml-1_1
.else
PLIST_SUB+=	XHTML11="@comment "
.endif

post-extract:
	${FIND} ${WRKSRC} \( -name '.*' -or -name '*.sh' -or -name '*.LOG' \) -delete
	${FIND} ${WRKSRC}/extensions -type d -mindepth 1 -maxdepth 1 -print0 |\
		${XARGS} -0 ${RM} -rf

do-install:
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
	(cd ${WRKSRC}/doc && ${TAR} -cf - . |\
		${TAR} -xf - -C${DOCSDIR})
.endif
.for m in ${MODULES}
		${MKDIR} ${PREFIX}/${INSTDIR}/${m}
		dirs=$$(${FIND} ${WRKSRC}/${m} -type d | ${SED} 's|^${WRKSRC}/${m}||g'); \
		for d in $${dirs}; do \
			files=$$(${FIND} ${WRKSRC}/${m}/$${d} -type f); \
			${MKDIR} ${PREFIX}/${INSTDIR}/${m}/$${d}; \
			for i in $${files}; do \
				${INSTALL_DATA} $${i} ${PREFIX}/${INSTDIR}/${m}/$${d}; \
			done; \
		done; \
		files=$$(${FIND} ${WRKSRC}/${m} -type f -depth 1); \
		for i in $${files}; do \
			${INSTALL_DATA} $${i} ${PREFIX}/${INSTDIR}/${m}; \
		done
.endfor
		files=$$(${FIND} ${WRKSRC} -type f -depth 1); \
		for i in $${files}; do \
			${INSTALL_DATA} $${i} ${PREFIX}/${INSTDIR}; \
		done

post-install:
	@${SETENV} PKG_PREFIX=${PREFIX} \
		${SH} ${PKGINSTALL} ${PKGNAME} POST-INSTALL

.include <bsd.port.post.mk>
