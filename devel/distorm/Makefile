# Created by: bf <bf2006a@yahoo.com>
# $FreeBSD: ports/devel/distorm/Makefile,v 1.17 2013/01/04 22:45:25 svnexp Exp $

PORTNAME?=	distorm
DISTVERSION=	20121220-r230
PORTREVISION?=	0
CATEGORIES=	devel
.if defined(PYTHON_SLAVEPORT)
CATEGORIES+=	python
.endif
MASTER_SITES=	LOCAL/bf
.if defined(PYTHON_SLAVEPORT)
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
.endif
.if defined(PYTHON_SLAVEPORT) || make(makesum)
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} dislib.py
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}
.endif

MAINTAINER=	bf@FreeBSD.org
COMMENT?=	Fast x86 and x86-64 disassembler library

LICENSE=	GPLv3

USE_DOS2UNIX=	yes
USE_XZ =	yes

.if defined(PYTHON_SLAVEPORT)
USE_PYTHON=		2.6-2.7

USE_PYDISTUTILS=		yes
PYDISTUTILS_PKGNAME=		distorm3
PYDISTUTILS_PKGVERSION =	3

PLIST_DIRS=	%%PYTHON_SITELIBDIR%%/distorm3

PLIST_FILES =	bin/dislib.py \
		%%PYTHON_SITELIBDIR%%/distorm3/sample.py \
		%%PYTHON_SITELIBDIR%%/distorm3/__init__.py \
		%%PYTHON_SITELIBDIR%%/distorm3/libdistorm3.so \
		%%PYTHON_SITELIBDIR%%/distorm3/sample.pyc \
		%%PYTHON_SITELIBDIR%%/distorm3/__init__.pyc \
		%%PYTHON_SITELIBDIR%%/distorm3/sample.pyo \
		%%PYTHON_SITELIBDIR%%/distorm3/__init__.pyo
.else
USE_LDCONFIG=	yes

BUILD_WRKSRC=	${WRKSRC}/make/linux

PLIST_FILES=	bin/disasm \
		include/distorm.h \
		include/mnemonics.h \
		lib/libdistorm3.a \
		lib/libdistorm3.so \
		lib/libdistorm3.so.1
.endif

.include <bsd.port.pre.mk>

.if ${ARCH} == "sparc64"
PICFLAG?=	-fPIC
.else
PICFLAG?=	-fpic
.endif

.if defined(PYTHON_SLAVEPORT)
post-extract:
	@${CP} ${_DISTDIR}/dislib.py ${WRKSRC}

post-patch:
	@${REINPLACE_CMD} -e "1{x;s|^|#!${PYTHON_CMD}|;G;}" ${WRKSRC}/dislib.py
	@${REINPLACE_CMD} -e "\|extra_compile_args=|s| '-O2',||" ${WRKSRC}/setup.py

post-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/dislib.py ${PREFIX}/bin

.else
do-build:
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} \
	EXTRAFLAGS="${PICFLAG} -DDISTORM_DYNAMIC" ${MAKE} ${_MAKE_JOBS} \
	${MAKE_ARGS} clib clean)
	@(cd ${BUILD_WRKSRC}; ${SETENV} ${MAKE_ENV} \
	EXTRAFLAGS="-DDISTORM_STATIC" ${MAKE} ${_MAKE_JOBS} ${MAKE_ARGS} staticlib)
	${CC} ${CFLAGS} ${LDFLAGS} -o ${BUILD_WRKSRC}/disasm \
	${WRKSRC}/examples/linux/main.c ${BUILD_WRKSRC}/libdistorm3.a

check regression-test test: build
	@cd ${BUILD_WRKSRC}; ./disasm disasm

do-install:
	@(cd ${BUILD_WRKSRC}; ${INSTALL_LIB} libdistorm3.a ${PREFIX}/lib; \
	${INSTALL_LIB} libdistorm3.so ${PREFIX}/lib/libdistorm3.so.1; \
	${LN} -sf ${PREFIX}/lib/libdistorm3.so.0 ${PREFIX}/lib/libdistorm3.so; \
	${INSTALL_PROGRAM} disasm ${PREFIX}/bin)
	@${INSTALL_DATA} ${WRKSRC}/include/*.h ${PREFIX}/include

.endif
.include <bsd.port.post.mk>
