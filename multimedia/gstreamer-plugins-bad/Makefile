# New ports collection makefile for:	gstreamer-plugins-bad
# Date created:			20 Jan 2006
# Whom:				Michael Johnson <ahze@FreeBSD.org>
#
# $FreeBSD: ports/multimedia/gstreamer-plugins-bad/Makefile,v 1.20 2012/11/17 05:59:49 svnexp Exp $
#    $MCom: ports/multimedia/gstreamer-plugins-bad/Makefile,v 1.11 2008/03/19 14:05:35 ahze Exp $
#

PORTREVISION=	0
CATEGORIES=	multimedia

COMMENT=	Bad gstreamer-plugins

GST_PLUGIN=	bad
GST_PLUGIN_SUFFIX=	-bad

MASTERDIR=	${.CURDIR}/../../multimedia/gstreamer-plugins

BUILD_DEPENDS+=	gstreamer-plugins>=${GST_VERSION}${GST_MINOR_VERSION}:${PORTSDIR}/multimedia/gstreamer-plugins \
		v4l_compat>=1.0.20100321:${PORTSDIR}/multimedia/v4l_compat
RUN_DEPENDS+=	gstreamer-plugins>=${GST_VERSION}${GST_MINOR_VERSION}:${PORTSDIR}/multimedia/gstreamer-plugins

gst_bad_DIST=	bad
BAD_GST_DIRS=	gst-libs sys gst po
PLIST_SUB=	VERSION="${GST_VERSION}"
NO_GSTREAMER_COMMON=	yes
PLIST=	${.CURDIR}/pkg-plist

do-build:
.for dir in ${BAD_GST_DIRS}
	@(cd ${BUILD_WRKSRC}/${dir}; ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${ALL_TARGET})
.endfor

do-install:
.for dir in ${BAD_GST_DIRS}
	@(cd ${INSTALL_WRKSRC}/${dir} && ${SETENV} ${MAKE_ENV} ${GMAKE} ${MAKE_FLAGS} ${MAKEFILE} ${MAKE_ARGS} ${INSTALL_TARGET})

.endfor

.include "${MASTERDIR}/Makefile"
