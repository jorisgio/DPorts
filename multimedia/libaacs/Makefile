# New ports collection makefile for:	libaacs
# Date created:	19 February 2011
# Whom:		kamikaze@bsdforen.de
#
# $FreeBSD: ports/multimedia/libaacs/Makefile,v 1.4 2012/11/17 05:59:50 svnexp Exp $
#

PORTNAME=	libaacs
PORTVERSION=	0.3.0
CATEGORIES=	multimedia
MASTER_SITES=	ftp://ftp.videolan.org/pub/videolan/${PORTNAME}/${PORTVERSION}/ \
		http://blu.opsec.eu/

MAINTAINER=	kamikaze@bsdforen.de
COMMENT=	Advanced Access Content System implementation

BUILD_DEPENDS=	${LOCALBASE}/bin/flex:${PORTSDIR}/textproc/flex
LIB_DEPENDS=	gcrypt.18:${PORTSDIR}/security/libgcrypt \
		gpg-error.0:${PORTSDIR}/security/libgpg-error

USE_ICONV=	yes
USE_GETTEXT=	yes
USE_BZIP2=	yes
USE_LDCONFIG=	yes
USE_AUTOTOOLS=	autoconf aclocal automake libtool
USE_BISON=	build

MAKE_JOBS_SAFE=	yes
HAS_CONFIGURE=	yes
CONFIGURE_ENV+=	LEX="${LOCALBASE}/bin/flex"
CONFIGURE_ARGS+=	--prefix="${PREFIX}" \
		--disable-debug \
		--disable-optimizations
# Evil hack, necessitating another evil hack in the plist target.
MAKE_ARGS+=	pkgconfigdir="${PREFIX}/libdata/pkgconfig" \
		CFLAGS=${CFLAGS:Q}

run-autotools:
	@cd ${WRKSRC} && ${SH} bootstrap

plist: build
	@${ECHO} "===> Rebuilding PLIST."
	@${MKDIR} "${WRKDIR}/plist"
	@cd ${WRKSRC} && ( \
		${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS} --prefix="${WRKDIR}/plist" && \
		${SETENV} ${MAKE_ENV} ${MAKE} ${MAKE_ARGS} pkgconfigdir="${WRKDIR}/plist/libdata/pkgconfig" ${INSTALL_TARGET} ; \
		${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS} \
	)
	@${FIND} -ds "${WRKDIR}/plist/" -not -type d \
		| ${SED} "s|${WRKDIR}/plist/||1" > ${PLIST}
	@${FIND} -ds "${WRKDIR}/plist/" -type d -mindepth 2 \
		| ${SED} -e "/pkgconfig/d" -e "s|${WRKDIR}/plist/|@dirrm |1" >> ${PLIST}
	@${RM} -rf "${WRKDIR}/plist"

.include <bsd.port.mk>
