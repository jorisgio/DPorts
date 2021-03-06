# New ports collection makefile for:	"Simplified" DocBook XML DTD
# Date created:		25 December 2000
# Whom:			KIRIYAMA Kazuhiko <kiri@FreeBSD.org>
#
# $FreeBSD: ports/textproc/sdocbook-xml/Makefile,v 1.12 2012/11/17 06:02:21 svnexp Exp $
#

PORTNAME=	sdocbook-xml
PORTVERSION= 	1.1
PORTEPOCH=	1
CATEGORIES=	textproc
MASTER_SITES=	http://www.oasis-open.org/docbook/xml/simple/${PORTVERSION}/
DISTNAME=	docbook-simple-${PORTVERSION}

MAINTAINER=	gabor@FreeBSD.org
COMMENT=	"Simplified" DocBook XML DTD

RUN_DEPENDS=	${XMLCATMGR}:${PORTSDIR}/textproc/xmlcatmgr

USE_ZIP=	yes
NO_BUILD=	yes
WRKSRC=		${WRKDIR}
PLIST_SUB=	XMLCATMGR=${XMLCATMGR}\
		CATALOG_PORTS_SGML=${CATALOG_PORTS_SGML}\
		CATALOG_PORTS_XML=${CATALOG_PORTS_XML}\
		XMLDIR=${SDOCBOOKDIR}\
		VERSION=${PORTVERSION}

SDOCBOOKDIR=	${PREFIX}/share/xml/${PORTNAME:S/-xml//}/${PORTVERSION}
XMLCATMGR=	${LOCALBASE}/bin/xmlcatmgr
CATALOG_PORTS_SGML=	${PREFIX}/share/sgml/catalog.ports
CATALOG_PORTS_XML=	${PREFIX}/share/xml/catalog.ports

FILES=		sdbcent.mod sdbhier.mod sdbpool.mod sdocbook-custom.dtd \
		sdocbook.css sdocbook.dtd sdocbookref-custom.dtd \
		sdocbookref.dtd sinclist.mod

do-extract:
	${MKDIR} ${WRKDIR}; \
	(cd ${WRKDIR} && ${UNZIP_CMD} ${EXTRACT_BEFORE_ARGS} ${DISTDIR}/${DISTFILES})

post-patch:
	${SED} -e 's#@@DTDDIR@@#${SDOCBOOKDIR}#' < ${FILESDIR}/catalog.xml > ${WRKSRC}/catalog.xml

do-install:
	${MKDIR} ${SDOCBOOKDIR}
.for i in ${FILES}
	${INSTALL_DATA} $(WRKDIR)/${i} ${SDOCBOOKDIR}
.endfor
	${INSTALL_DATA} ${FILESDIR}/catalog ${SDOCBOOKDIR}
	${INSTALL_DATA} ${WRKDIR}/catalog.xml ${SDOCBOOKDIR}

post-install:
	${XMLCATMGR} -sc ${CATALOG_PORTS_SGML} add CATALOG ${SDOCBOOKDIR}/catalog
	${XMLCATMGR} -c ${CATALOG_PORTS_XML} add nextCatalog ${SDOCBOOKDIR}/catalog.xml

.include <bsd.port.mk>
