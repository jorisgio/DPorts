# New ports collection makefile for:   abcmidi
# Date created:			10 March 2002
# Whom:				Sue Blake <sue@FreeBSD.org>
#
# $FreeBSD: ports/audio/abcmidi/Makefile,v 1.50 2012/11/17 05:54:27 svnexp Exp $
#

PORTNAME=	abcmidi
PORTVERSION=	2011.04.29
CATEGORIES=	audio
MASTER_SITES=	http://ifdo.ca/~seymour/runabc/
DISTNAME=	abcMIDI-${PORTVERSION:S/./-/g}

MAINTAINER=	sylvio@FreeBSD.org
COMMENT=	Convert abc music files to MIDI and PostScript

LICENSE=	GPLv2

WRKSRC=		${WRKDIR}/${PORTNAME}

EXTRACT_BEFORE_ARGS=	-aqo

USE_ZIP=	yes
USE_GMAKE=	yes
MAKEFILE=	makefiles/unix.mak
MAKE_ARGS=	CC="${CC}" CFLAGS="${CFLAGS} -DANSILIBS -c" LNK="${CC}"

MAN1=		abc2abc.1 abc2midi.1 mftext.1 midi2abc.1 midicopy.1 yaps.1

do-install:
.for FILE in abc2abc abc2midi abcmatch mftext midi2abc midicopy yaps
	${INSTALL_PROGRAM} ${WRKSRC}/${FILE} ${PREFIX}/bin
.endfor
.for FILE in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/doc/${FILE} ${MAN1PREFIX}/man/man1
.endfor
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/*.txt ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/CHANGES ${DOCSDIR}
	@${MKDIR} ${DOCSDIR}/programming
	${INSTALL_DATA} ${WRKSRC}/doc/programming/*.abc ${DOCSDIR}/programming
	${INSTALL_DATA} ${WRKSRC}/doc/programming/*.txt ${DOCSDIR}/programming
.endif

.include <bsd.port.mk>
