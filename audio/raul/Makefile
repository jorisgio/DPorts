# New ports collection makefile for:	raul
# Date created:		2008-07-22
# Whom:			Edward Tomasz Napierala <trasz@FreeBSD.org>
#
# $FreeBSD: ports/audio/raul/Makefile,v 1.10 2012/11/17 05:54:42 svnexp Exp $
#

PORTNAME=	raul
PORTVERSION=	0.8.0
CATEGORIES=	audio
MASTER_SITES=	http://download.drobilla.net/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	C++ utility library primarily aimed at audio/musical applications

LICENSE=	GPLv2 GPLv3
LICENSE_COMB=	dual

LIB_DEPENDS=	boost_date_time.4:${PORTSDIR}/devel/boost-libs

USE_BZIP2=	yes
USE_GNOME=	glib20
USE_PYTHON_BUILD=yes
USE_LDCONFIG=	yes

CFLAGS+=	-I${LOCALBASE}/include

.include <bsd.port.pre.mk>

.if defined(BATCH) || defined(PACKAGE_BUILDING)
WAF_VERBOSE=	--verbose
.endif

.if defined(MAKE_JOBS_NUMBER)
WAF_JOBS=	--jobs=${MAKE_JOBS_NUMBER}
.endif

post-patch:
	@${REINPLACE_CMD} -e \
		"s|$$[{]LIBDIRNAME[}]/pkgconfig|libdata/pkgconfig| ; \
		 s|-fshow-column'|-fshow-column ${CXXFLAGS}'|" \
			${WRKSRC}/autowaf/autowaf.py

do-configure:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} --prefix=${PREFIX} configure)

do-build:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} ${WAF_JOBS} build)

do-install:
	@(cd ${WRKSRC} && ./waf ${WAF_VERBOSE} install)

.include <bsd.port.post.mk>
