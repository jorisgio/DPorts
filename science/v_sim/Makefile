# Created by: Thierry Thomas <thierry@pompo.net>
# $FreeBSD: ports/science/v_sim/Makefile,v 1.39 2012/12/11 14:23:09 svnexp Exp $

PORTNAME=	v_sim
PORTVERSION=	3.6.1.1
PORTREVISION=	1
CATEGORIES=	science
MASTER_SITES=	http://www-drfmc.cea.fr/sp2m/L_Sim/V_Sim/download/

MAINTAINER=	thierry@FreeBSD.org
COMMENT=	Visualization of atomic structures

LICENSE=	CeCILL
LICENSE_NAME=	CeCILL
LICENSE_FILE=	${WRKSRC}/COPYING
LICENSE_PERMS=	dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

LIB_DEPENDS=	cairo:${PORTSDIR}/graphics/cairo

USE_BZIP2=	yes
USE_FORTRAN=	yes
USE_GNOME=	gtk20
USE_GL=		yes
USE_GMAKE=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-gtk-doc --with-html-dir=${PREFIX}/share/doc
CPPFLAGS+=	${CFLAGS} -I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib
USE_LDCONFIG=	yes
INSTALLS_ICONS=	yes

.if !defined(NOPORTDOCS)
MAN1=		v_sim.1
.endif

.if defined(WITHOUT_NLS)
PLIST_SUB+=	NLS="@comment "
.else
USE_GETTEXT=	yes
PLIST_SUB+=	NLS=""
.endif

.if !defined(WITHOUT_CDF)
LIB_DEPENDS+=	netcdf.4:${PORTSDIR}/science/netcdf
CONFIGURE_ARGS+=--with-netcdf=${LOCALBASE}
PLIST_SUB+=	CDF=""
.else
CONFIGURE_ARGS+=--without-netcdf
PLIST_SUB+=	CDF="@comment "
.endif

.if !defined(WITHOUT_BABEL)
LIB_DEPENDS+=	openbabel:${PORTSDIR}/science/openbabel
CONFIGURE_ARGS+=--with-openbabel
PLIST_SUB+=	BABEL=""
.else
CONFIGURE_ARGS+=--without-openbabel
PLIST_SUB+=	BABEL="@comment "
.endif

pre-configure:
	${REINPLACE_CMD} -e 's|$$datadir/doc/$$PACKAGE/examples|${EXAMPLESDIR}|'	\
		-e 's|CFLAGS="-O2"|#CFLAGS="-O2"|;s|Werror ansi pedantic-errors||'	\
		-e 's|$${docdir}/examples|${EXAMPLESDIR}|'				\
		${WRKSRC}/${CONFIGURE_SCRIPT}
.if defined(WITHOUT_NLS)
	${REINPLACE_CMD} -e 's|	po ||'	\
		${WRKSRC}/Makefile.in
.endif
.if defined(NOPORTDOCS)
	${REINPLACE_CMD} -e 's|Documentation||'	\
		${WRKSRC}/Makefile.in
.endif
.if defined(NOPORTEXAMPLES)
	${REINPLACE_CMD} -e 's|pixmaps \\|pixmaps|;s|examples$$||'	\
		${WRKSRC}/Makefile.in
	${FIND} ${WRKSRC}/lib/plug-ins -name Makefile.in | ${XARGS} \
	${REINPLACE_CMD} -e	\
	's|install-v_simexamplesDATA install-v_simpixmapsDATA|install-v_simpixmapsDATA|'
	${REINPLACE_CMD} -e 's|: install-v_simexamplesDATA|:|'	\
		${WRKSRC}/lib/python/Makefile.in
.endif

.include <bsd.port.mk>
