# ex:ts=8
# Ports collection makefile for:	nanoblogger-extra
# Date created:			Jun 19, 2009
# Whom:				Tobias Rehbein <tobias.rehbein@web.de>
#
# $FreeBSD: ports/www/nanoblogger-extra/Makefile,v 1.5 2012/11/17 06:02:43 svnexp Exp $
#

PORTNAME=	nanoblogger-extra
PORTVERSION=	3.4.2
CATEGORIES=	www
MASTER_SITES=	http://nanoblogger.sourceforge.net/downloads/

MAINTAINER=	tobias.rehbein@web.de
COMMENT=	Extras for nanoblogger, a small weblog engine

RUN_DEPENDS=	nb:${PORTSDIR}/www/nanoblogger

WRKSRC=		${WRKDIR}/nanoblogger-${PORTVERSION}
DATADIR=	${PREFIX}/share/nanoblogger

NO_BUILD=	yes

do-install:
.for data in default lang plugins
	@( cd ${WRKSRC}/${data} && ${CHMOD} 777 ${WRKSRC}/${data}/* && \
		${COPYTREE_SHARE} \* ${DATADIR}/${data} "! -empty" )
.endfor

post-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for doc in COPYING ChangeLog README
	@${INSTALL_DATA} ${WRKSRC}/${doc} ${DOCSDIR}
.endfor
	@${MKDIR} ${DOCSDIR}/html
	@${INSTALL_DATA} ${WRKSRC}/docs/*.html ${DOCSDIR}/html
.endif

.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/examples/nanoblogger.bash_completion ${EXAMPLESDIR}
.endif

.include <bsd.port.mk>
