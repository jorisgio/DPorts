# Created by: Jonathan Chen <jonc@chen.org.nz>
# $FreeBSD: ports/net-im/psi/Makefile,v 1.58 2012/11/17 06:00:29 svnexp Exp $

PORTNAME=	psi
PORTVERSION=	0.15
CATEGORIES=	net-im
MASTER_SITES=	SF/${PORTNAME}/Psi/${PORTVERSION}

MAINTAINER=	makc@FreeBSD.org
COMMENT=	A Qt-based Jabber client

LIB_DEPENDS=	qca.2:${PORTSDIR}/devel/qca
RUN_DEPENDS=	qca-ossl>=2.0.0.b3:${PORTSDIR}/security/qca-ossl \
		qca-gnupg>=2.0.0.b3:${PORTSDIR}/security/qca-gnupg

HAS_CONFIGURE=	yes
QT_NONSTANDARD=	yes
USE_BZIP2=	yes
USE_PKGCONFIG=	build
USE_QT4=	gui network xml imageformats_run \
		qmake_build moc_build rcc_build uic_build
USE_XORG=	xscrnsaver

CONFIGURE_ARGS=	--prefix=${PREFIX} --qtdir=${LOCALBASE} \
		--disable-growl --verbose
CONFIGURE_ENV=	QMAKEFLAGS='${QMAKEFLAGS}'
MAKE_JOBS_SAFE=	yes

OPTIONS_DEFINE=	ASPELL ENCHANT DBUS
OPTIONS_DEFAULT=	ASPELL DBUS

ASPELL_DESC=	Use aspell for spell checking
ENCHANT_DESC=	Use Enchant for spell checking

.include <bsd.port.options.mk>

.if defined(WITH_DEBUG)
CONFIGURE_ARGS+=	--debug
PLIST_SUB+=	DEBUG=""
.else
CONFIGURE_ARGS+=	--release  --no-separate-debug-info
PLIST_SUB+=	DEBUG="@comment "
.endif

.if ${PORT_OPTIONS:MDBUS}
USE_QT4+=	dbus
.else
CONFIGURE_ARGS+=	--disable-qdbus
.endif

.if ${PORT_OPTIONS:MASPELL}
LIB_DEPENDS+=	aspell.16:${PORTSDIR}/textproc/aspell
CONFIGURE_ARGS+=	--with-aspell-inc=${LOCALBASE}/include \
			--with-aspell-lib=${LOCALBASE}/lib
.else
CONFIGURE_ARGS+=	--disable-aspell
.endif

.if ${PORT_OPTIONS:MENCHANT}
LIB_DEPENDS+=	enchant.1:${PORTSDIR}/textproc/enchant
.else
CONFIGURE_ARGS+=	--disable-enchant
.endif

post-install:
	${STRIP_CMD} ${PREFIX}/bin/psi

.include <bsd.port.mk>
