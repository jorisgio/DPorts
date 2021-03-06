# Created by: Simon 'corecode' Schubert <corecode@corecode.ath.cx>
# $FreeBSD: ports/textproc/html2text/Makefile,v 1.15 2012/11/17 06:01:59 svnexp Exp $

PORTNAME=	html2text
PORTVERSION=	1.3.2a
CATEGORIES=	textproc
MASTER_SITES=	${MASTER_SITE_SUNSITE} \
		http://www.mbayer.de/html2text/downloads/
MASTER_SITE_SUBDIR=	apps/www/converters

MAINTAINER=	eadler@FreeBSD.org
COMMENT=	Converts HTML documents into plain text

HAS_CONFIGURE=	yes

MANCOMPRESSED=	yes
MAN1=		html2text.1
MAN5=		html2textrc.5
PORTDOCS=	CHANGES CREDITS KNOWN_BUGS README TODO
PLIST_FILES=	bin/html2text

CONFLICTS=	py27-html2text-[0-9]*

PORTSCOUT=	skipb:0

.include <bsd.port.options.mk>

post-patch:
	@${REINPLACE_CMD} -e '/echo=/s/ -e//' ${WRKSRC}/configure
.for file in Makefile.in libstd/Makefile.in
	@${REINPLACE_CMD} -e '/^DEBUG/s/^/#/; \
		 /^CXXFLAGS/s/=/+=/' ${WRKSRC}/${file}
.endfor
.for file in Area.h HTMLControl.h Properties.h format.h
	@${REINPLACE_CMD} -e 's/<istream>/<iostream>/' ${WRKSRC}/${file}
.endfor

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/html2text ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/html2text.1.gz ${MANPREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/html2textrc.5.gz ${MANPREFIX}/man/man5
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.include <bsd.port.mk>
