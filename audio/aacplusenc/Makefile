# New ports collection makefile for:	aacplusenc
# Date created:				28 July 2007
# Whom:					Pav Lucistnik <pav@FreeBSD.org>
#
# $FreeBSD: ports/audio/aacplusenc/Makefile,v 1.18 2012/11/17 05:54:27 svnexp Exp $
#

PORTNAME=	aacplusenc
PORTVERSION=	0.17.5
CATEGORIES=	audio
MASTER_SITES=	http://ppa.launchpad.net/teknoraver/ppa/ubuntu/pool/main/a/aacplusenc/
DISTFILES=	${DISTNAME:S,-,_,}${EXTRACT_SUFX}

MAINTAINER=	pav@FreeBSD.org
COMMENT=	An aacPlus v2 command-line encoder

USE_GMAKE=	yes

RESTRICTED=	unclear legal status, probably need licenses from 3GPP, Via Licensing and Coding Technologies

CONFLICTS=	libaacplus-[0-9]*

PLIST_FILES=	bin/aacplusenc

.if defined(WITHOUT_FFTW3)
MAKE_ARGS+=	NOFFTW3=1
.else
LIB_DEPENDS+=	fftw3f:${PORTSDIR}/math/fftw3-float \
		fftw3:${PORTSDIR}/math/fftw3
CFLAGS+=	-I${LOCALBASE}/include
.endif

WRKSRC=		${WRKDIR}/${PORTNAME}

post-patch:
	@${REINPLACE_CMD} -e 's|-O3 -ftree-vectorize|${CFLAGS}| ; s|-lfftw3f|-L${LOCALBASE}/lib -lfftw3f| ; s|INSTDIR=.*|INSTDIR=${PREFIX}|' ${WRKSRC}/Makefile
	@${REINPLACE_CMD} -e 's|<endian.h>|<sys/endian.h>| ; s|__BYTE|_BYTE|' ${WRKSRC}/au_channel.h
	@${REINPLACE_CMD} -e 's|gcc|${CC}|' ${WRKSRC}/configure

.include <bsd.port.mk>
