# New ports collection makefile for:	p5-Tk-TableMatrix
# Date created:			Mon Nov 4 01:15:53 UTC 2002
# Whom:		Mario Sergio Fujikawa Ferreira <lioux@FreeBSD.org>
#
# $FreeBSD: ports/x11-toolkits/p5-Tk-TableMatrix/Makefile,v 1.25 2012/11/17 06:03:38 svnexp Exp $
#

PORTNAME=	Tk-TableMatrix
PORTVERSION=	1.23
PORTREVISION=	5
CATEGORIES=	x11-toolkits perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Table/matrix extension to perl/tk for displaying table formatted data

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

PERL_CONFIGURE=	yes
CONFIGURE_ARGS=	X11LIB=${LOCALBASE}/lib X11INC=${LOCALBASE}/include

MAN3=		Tk::TableMatrix.3 \
		Tk::TableMatrix::Spreadsheet.3 \
		Tk::TableMatrix::SpreadsheetHideRows.3

.include <bsd.port.mk>
