# New ports collection makefile for:	algotutor
# Date created:		19 January 2005
# Whom:			Kevin Lo <kevlo@FreeBSD.org>
#
# $FreeBSD: ports/math/algotutor/Makefile,v 1.16 2012/11/17 05:59:19 svnexp Exp $
#

PORTNAME=	algotutor
PORTVERSION=	0.8.6
PORTREVISION=	3
CATEGORIES=	math
MASTER_SITES=	http://saturn.stu.edu.tw/~ckhung/dl/
EXTRACT_SUFX=	.tgz

MAINTAINER=	kevlo@FreeBSD.org
COMMENT=	An interactive tutorial for algorithms and data structures

BUILD_DEPENDS=	p5-Tk>=0:${PORTSDIR}/x11-toolkits/p5-Tk
RUN_DEPENDS:=	${BUILD_DEPENDS}

USE_PERL5_BUILD=yes
NO_BUILD=	yes

MAN1=		algotutor.1 gen_at_graph.1
BINFILES=	algotutor gen_at_graph
LIBFILES=	BST.pm Board.pm Collection.pm Configurable.pm DCEdge.pm \
		Edge.pm Graph.pm Heap.pm Line.pm PQueue.pm RBTree.pm \
		RecCanvas.pm RecDialog.pm TreeNode.pm Vector.pm Vector2.pm \
		Vector3.pm Vertex.pm basic.pl utilalgo

post-patch:
	${REINPLACE_CMD}  -e 's,#!/usr/bin/perl,#!${PERL},' ${WRKSRC}/algotutor
	${PERL} -pi -e "s'!!PREFIX!!'${PREFIX}'g" ${WRKSRC}/algotutor

do-install:
	${MKDIR} ${SITE_PERL}/algotutor
	${MKDIR} ${PREFIX}/share/algotutor
	${CP} -R ${WRKSRC}/data ${PREFIX}/share/algotutor
	${CP} -R ${WRKSRC}/cgeom ${SITE_PERL}/algotutor
	${CP} -R ${WRKSRC}/dp ${SITE_PERL}/algotutor
	${CP} -R ${WRKSRC}/graph ${SITE_PERL}/algotutor
.for file in ${MAN1}
	${INSTALL_MAN} ${WRKSRC}/doc/${file} ${PREFIX}/man/man1
.endfor
.for file in ${BINFILES}
	${INSTALL_SCRIPT} ${WRKSRC}/${file} ${PREFIX}/bin
.endfor
.for file in ${LIBFILES}
	${INSTALL_DATA} ${WRKSRC}/${file} ${SITE_PERL}/algotutor
.endfor

.include <bsd.port.mk>
