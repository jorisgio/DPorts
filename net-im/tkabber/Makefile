# New ports collection makefile for:	tkabber
# Date created:				22 October 2003
# Whom:					Alexander Timoshenko <gonzo@univ.kiev.ua>
#
# $FreeBSD: ports/net-im/tkabber/Makefile,v 1.13 2012/11/17 06:00:30 svnexp Exp $
#

PORTNAME=	tkabber
PORTVERSION=	0.11.1
CATEGORIES=	net-im
MASTER_SITES=	http://files.jabber.ru/tkabber/

MAINTAINER=	c.kworr@gmail.com
COMMENT=	Tcl/Tk based jabber client

RUN_DEPENDS=	wish8.5:${PORTSDIR}/x11-toolkits/tk85 \
		dtplite:${PORTSDIR}/devel/tcllib \
		${LOCALBASE}/lib/tls/pkgIndex.tcl:${PORTSDIR}/devel/tcltls \
		${LOCALBASE}/lib/bwidget/pkgIndex.tcl:${PORTSDIR}/x11-toolkits/bwidget

CONFLICTS=	tkabber-devel-*

WRKSRC=		${WRKDIR}/${DISTNAME}
NO_BUILD=	yes

SUBDIRS=	contrib doc emoticons examples ifacetk jabberlib mclistbox \
		msgs pixmaps plugins sounds tclxml trans

do-install:
	${ECHO} -e "#!/bin/sh\nexec wish8.5 ${DATADIR}/tkabber.tcl \
		-name tkabber \"\$$@\"\n" > ${PREFIX}/bin/tkabber
	${CHMOD} +x ${PREFIX}/bin/tkabber
	${MKDIR} ${DATADIR}
	${CP} ${WRKSRC}/*.tcl ${DATADIR}
.for i in ${SUBDIRS}
	${CP} -R ${WRKSRC}/${i} ${DATADIR}
.endfor
.if !defined(NOPORTEXAMPLES)
	${MKDIR} ${EXAMPLESDIR}
	${CP} -R ${WRKSRC}/examples/* ${EXAMPLESDIR}
.endif
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for i in tkabber.html tkabber.xml
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
