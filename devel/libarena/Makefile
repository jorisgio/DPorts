# Created by: ijliao
# $FreeBSD: ports/devel/libarena/Makefile,v 1.7 2012/11/17 05:55:53 svnexp Exp $

PORTNAME=	libarena
PORTVERSION=	0.3.5
CATEGORIES=	devel
MASTER_SITES=	http://www.25thandclement.com/~william/projects/releases/
EXTRACT_SUFX=	.tgz

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Custom Memory Allocator Interface

LICENSE=	MIT

USE_GMAKE=	yes
MAKE_JOBS_SAFE=	yes

PLIST_FILES=	include/arena/align.h \
		include/arena/arena.h \
		include/arena/pool.h \
		include/arena/proto.h \
		include/arena/rbits.h \
		include/arena/util.h \
		lib/libarena.a
PLIST_DIRS=	include/arena

post-patch:
.for i in Epilogue.mk Prologue.mk
	@${REINPLACE_CMD} -e \
		'/!=/s|^|#|' ${WRKSRC}/mk/${i}
.endfor
	@${REINPLACE_CMD} -e \
		'/^PREFIX/s|:=|?=|' ${WRKSRC}/mk/Variables.mk

.include <bsd.port.mk>
