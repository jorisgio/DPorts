# Created by: Nicola Vitale	<nivit@email.it>
# $FreeBSD: ports/math/geogebra-i18n/Makefile,v 1.10 2012/12/10 13:48:06 svnexp Exp $

PORTNAME=	geogebra-i18n
DISTVERSION=	3-2-47-0
PORTREVISION=	0
CATEGORIES=	math java
MASTER_SITES=	http://nivi.interfree.it/distfiles/${PORTNAME}/
#PKGNAMESUFFIX=	-i18n
DISTNAME=	GeoGebra-FreeBSD-Installer-${DISTVERSION}

MAINTAINER=	nivit@FreeBSD.org
COMMENT=	Dynamic software that joins geometry, algebra, and calculus

RUN_DEPENDS=	${LOCALBASE}/bin/update-mime-database:${PORTSDIR}/misc/shared-mime-info

DATADIR=	${JAVASHAREDIR}/${PORTNAME}

INSTALLS_ICONS=	yes

JAVA_VERSION=	1.6+

NO_BUILD=	yes

USE_DOS2UNIX=	geogebra geogebra.desktop
USE_GNOME=	desktopfileutils
USE_JAVA=	yes

WRKSRC=	${WRKDIR}/geogebra-${PORTVERSION}

FIND_JARS=	-type f -name "*.jar" -maxdepth 1 -print0

JARFILE=	${PORTNAME:S,-i18n,,}.jar

post-patch:
	${REINPLACE_CMD} -e 's,%%DATADIR%%,${DATADIR},g' ${WRKSRC}/${PORTNAME:S,-i18n,,}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/geogebra ${PREFIX}/bin/
	cd ${WRKSRC} && ${MKDIR} ${DATADIR} && \
	${FIND} . ${FIND_JARS} | ${XARGS} -0 -J % ${INSTALL_DATA} % ${DATADIR} && \
	${COPYTREE_SHARE} unsigned ${DATADIR} && \
	${COPYTREE_SHARE} icons ${PREFIX}/share && \
	${MKDIR} ${PREFIX}/share/mime/packages && \
	${MKDIR} ${PREFIX}/share/applications && \
	${INSTALL_DATA} ${WRKSRC}/geogebra.xml ${PREFIX}/share/mime/packages && \
	${INSTALL_DATA} ${WRKSRC}/geogebra.desktop ${DESKTOPDIR}
	-${LOCALBASE}/bin/update-desktop-database
	-${LOCALBASE}/bin/update-mime-database ${LOCALBASE}/share/mime

.include <bsd.port.mk>
