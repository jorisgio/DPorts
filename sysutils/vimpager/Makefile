# Created by:					Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: ports/sysutils/vimpager/Makefile,v 1.14 2012/11/26 02:46:12 svnexp Exp $

PORTNAME=	vimpager
PORTVERSION=	1.7.7
CATEGORIES=	sysutils
MASTER_SITES=	https://github.com/${GH_DEVELOPER}/${GH_PORTNAME}/tarball/${DISTVERSION}/
DISTNAME=	${GH_DEVELOPER}-${GH_PORTNAME}-${DISTVERSION}-0-g${GH_VERSION}

MAINTAINER=	adamw@FreeBSD.org
COMMENT=	Use ViM as a pager

RUN_DEPENDS=	vim:${PORTSDIR}/editors/vim

# Github makes this very confusing
GH_PORTNAME=	${PORTNAME}
GH_DEVELOPER=	rkitover	#GH trees live under a username
GH_VERSION=	44054ac225	#GH appends a commit hash to the filename
GH_SRCDIR=	eb12b8d		#GH appends something else (??) to the extracted pathname
WRKSRC=		${WRKDIR}/${GH_DEVELOPER}-${GH_PORTNAME}-${GH_SRCDIR}
FETCH_ARGS=	-prR		#GH issues HTTP/302 errors for source tarballs

PLIST_FILES=	bin/${PORTNAME} bin/vimcat etc/${PORTNAME}rc
MAN1=		${PORTNAME}.1

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${PORTNAME} ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/vimcat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${MAN1} ${MANPREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/${PORTNAME}rc ${PREFIX}/etc

.include <bsd.port.mk>
