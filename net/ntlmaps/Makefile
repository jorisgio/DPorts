# New ports collection makefile for:	ntlmaps
# Date created:				1 August 2007
# Whom:					kevlo
#
# $FreeBSD: ports/net/ntlmaps/Makefile,v 1.5 2012/11/17 06:00:07 svnexp Exp $

PORTNAME=	ntlmaps
PORTVERSION=	0.9.9.0.1
PORTREVISION=	2
CATEGORIES=	net
MASTER_SITES=	SF/${PORTNAME}/${PORTNAME}/${PORTNAME}-${PORTVERSION}

MAINTAINER=	kevlo@FreeBSD.org
COMMENT=	A proxy that authenticates the user using the NTLM protocol

USE_PYTHON=	yes
USE_DOS2UNIX=	yes

DOCS=		COPYING Install.txt changelog.txt readme.txt research.txt

post-patch:
	@${REINPLACE_CMD} -e \
	    's,^#! /usr/bin/python,#!${PYTHON_CMD},' ${WRKSRC}/main.py
	@${RM} -rf ${WRKSRC}/main.py.bak

do-build:
	@${PYTHON_CMD} ${PYTHON_LIBDIR}/compileall.py ${WRKSRC}
	@${PYTHON_CMD} -O ${PYTHON_LIBDIR}/compileall.py ${WRKSRC}

do-install:
.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif
	@${MKDIR} ${PYTHON_SITELIBDIR}/${PORTNAME}
	@${MKDIR} ${PREFIX}/share/examples/ntlmaps
	${INSTALL_DATA} ${WRKSRC}/*.py* ${PYTHON_SITELIBDIR}/${PORTNAME}
	${INSTALL_DATA} ${WRKSRC}/lib/*.py* ${PYTHON_SITELIBDIR}/${PORTNAME}
	${CHMOD} +x ${PYTHON_SITELIBDIR}/${PORTNAME}/main.py
	${LN} -fs ${PYTHON_SITELIBDIR}/${PORTNAME}/main.py ${PREFIX}/bin/ntlmaps
	${INSTALL_DATA} ${WRKSRC}/server.cfg ${PREFIX}/share/examples/ntlmaps

.include <bsd.port.mk>
