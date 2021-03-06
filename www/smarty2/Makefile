# New ports collection makefile for:	smarty
# Date created:		10 March 2002
# Whom:			Simon 'corecode' Schubert <corecode@corecode.ath.cx>
#
# $FreeBSD: ports/www/smarty2/Makefile,v 1.2 2012/11/17 06:03:06 svnexp Exp $
#

PORTNAME=	smarty
PORTVERSION=	2.6.27
CATEGORIES=	www
MASTER_SITES=	http://www.smarty.net/files/ \
		http://www.smarty.net/files/docs/:manual
DISTFILES=	Smarty-${PORTVERSION}${EXTRACT_SUFX}

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	The PHP compiling template engine

USE_ZIP=	yes

DOCSVERSION=	2.6

WRKSRC=		${WRKDIR}/Smarty-${PORTVERSION}

OPTIONS_DEFINE=	DOCS

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MDOCS}
DISTFILES+=	manual-en-${DOCSVERSION}${EXTRACT_SUFX}:manual
.endif

NO_BUILD=	yes
USE_PHP=	pcre
WANT_PHP_WEB=	yes

PKGMESSAGE=	${WRKDIR}/pkg-message
SUB_FILES=	pkg-message

do-install:
	@${MKDIR} ${DATADIR}
.for f in Config_File.class.php Smarty.class.php Smarty_Compiler.class.php debug.tpl
	@${INSTALL_DATA} ${WRKSRC}/libs/$f ${DATADIR}
.endfor
	@${MKDIR} ${DATADIR}/internals
	@${INSTALL_DATA} ${WRKSRC}/libs/internals/* ${DATADIR}/internals
	@${MKDIR} ${DATADIR}/plugins
	@${INSTALL_DATA} ${WRKSRC}/libs/plugins/* ${DATADIR}/plugins
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${DOCSDIR}
.for f in BUGS FAQ INSTALL NEWS README
	@${INSTALL_DATA} ${WRKSRC}/$f ${DOCSDIR}
.endfor
	@${MKDIR} ${DOCSDIR}/manual
	@cd ${WRKDIR}/manual-en && ${FIND} . | ${CPIO} --quiet -dumpR ${SHAREOWN}:${SHAREGRP} ${DOCSDIR}/manual
.endif

post-install:
	@${CAT} ${PKGMESSAGE}

.include <bsd.port.mk>
