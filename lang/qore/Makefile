# $FreeBSD: ports/lang/qore/Makefile,v 1.11 2012/12/10 19:24:02 svnexp Exp $

PORTNAME=	qore
PORTVERSION=	0.8.6.2
PORTREVISION=	1
CATEGORIES=	lang
MASTER_SITES=	SF/qore/qore/${PORTVERSION}/

MAINTAINER=	estrabd@gmail.com
COMMENT=	The Qore Programming Language

LICENSE=	GPLv2

LIB_DEPENDS=	pcre:${PORTSDIR}/devel/pcre \
		mpfr:${PORTSDIR}/math/mpfr
BUILD_DEPENDS=	${LOCALBASE}/bin/flex:${PORTSDIR}/textproc/flex \
		${LOCALBASE}/bin/bison:${PORTSDIR}/devel/bison

USE_BZIP2=	yes
USE_GMAKE=	yes
USE_GNOME=	gnomehack
USE_ICONV=	yes
USE_OPENSSL=	yes
USE_LDCONFIG=	yes
GNU_CONFIGURE=	yes
MAKE_JOBS_SAFE=	yes

CONFIGURE_ENV=	LEX="${LOCALBASE}/bin/flex" \
		PTHREAD_LIBS="${PTHREAD_LIBS}" \
		PTHREAD_CFLAGS="${PTRHEAD_CFLAGS}"
CONFIGURE_ARGS=	--disable-debug --disable-static --with-doxygen=no
LDFLAGS+=	-L${LOCALBASE}/lib

MAN1=		qore.1

# VERSION sub should always be the first three components of
# PORTVERSION (x.y.z).  Adjust with :R accordingly.
PLIST_SUB=	VERSION=${PORTVERSION:R}

.include <bsd.port.pre.mk>

.if ${ARCH} == "powerpc"
BROKEN=		Does not compile on powerpc
.endif

post-patch:
	${REINPLACE_CMD} -e 's|; make|; $${MAKE}|g' ${WRKSRC}/Makefile.in

.include <bsd.port.post.mk>
