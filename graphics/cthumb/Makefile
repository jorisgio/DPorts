# New ports collection makefile for:    cthumb
# Date created:         30 July 2001
# Whom:                 dom@happygiraffe.net
#
# $FreeBSD: ports/graphics/cthumb/Makefile,v 1.17 2012/11/17 05:58:02 svnexp Exp $
#

PORTNAME=	cthumb
PORTVERSION=	4.2
PORTREVISION=	4
CATEGORIES=	graphics www
MASTER_SITES=	SF

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Themeable web picture album generator

RUN_DEPENDS=	${LOCALBASE}/bin/pnmscale:${PORTSDIR}/graphics/netpbm \
		${LOCALBASE}/bin/djpeg:${PORTSDIR}/graphics/jpeg \
		${LOCALBASE}/bin/jhead:${PORTSDIR}/graphics/jhead \
		p5-HTML-Parser>=0:${PORTSDIR}/www/p5-HTML-Parser \
		p5-URI>=0:${PORTSDIR}/net/p5-URI

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-themedir=${DATADIR}
USE_PERL5=	yes

MAN1=		cthumb.1

PORTDOCS=	ChangeLog INSTALL README TO-DO VERSION cthumbrc.sample

THEMES=		blue-steel.theme \
		classic-clips.theme \
		classic.theme \
		crosshair.theme \
		film.theme \
		flaps.theme \
		float-medium.theme \
		float-more.theme \
		float-thick.theme \
		float.theme \
		ithumb.theme \
		neat-round.theme \
		neat-square.theme \
		oak.theme \
		postcard.theme \
		shiny-tube.theme \
		simpleframe.theme \
		slides-big.theme \
		slides-clean.theme \
		slides-huge.theme \
		slides-small.theme \
		spotlight.theme \
		tv-large.theme \
		tv.theme

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cthumb ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/cthumb.1 ${PREFIX}/man/man1
	${MKDIR} ${DATADIR}
.for theme in ${THEMES}
	${MKDIR} ${DATADIR}/${theme}
	${INSTALL_DATA} ${WRKSRC}/themes/${theme}/* ${DATADIR}/${theme}
.endfor
.if !defined(NOPORTDOCS)
	${MKDIR} ${DOCSDIR}
.for doc in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
