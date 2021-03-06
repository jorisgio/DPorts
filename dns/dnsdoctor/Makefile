# New ports collection makefile for:	dnsdoctor
# Date created:		2004-09-10
# Whom:	      		Janos.Mohacsi@bsd.hu
#
# $FreeBSD: ports/dns/dnsdoctor/Makefile,v 1.3 2012/11/17 05:57:08 svnexp Exp $
#

PORTNAME=	dnsdoctor
PORTVERSION=	1.0.1
CATEGORIES=	dns ipv6 ruby
MASTER_SITES=	http://www.dnsdoctor.org/download/src/
EXTRACT_SUFX=	.tgz

MAINTAINER=	janos.mohacsi@bsd.hu
COMMENT=	Perform consistency checks on DNS zones

.if defined(WITH_X11)
RUN_DEPENDS=	${RUBY_SITEARCHLIBDIR}/gtk2.so:${PORTSDIR}/x11-toolkits/ruby-gtk2
.endif

USE_RUBY=	yes
RUBY_VER=	1.8
USE_RUBY_FEATURES=	ruby18

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/${PORTNAME}

MAN1=		dnsdoctor.1
DOCS=		INSTALL README HISTORY doc/*.html doc/*.png

DNSDOCTOR_TARGET=	configure common cli

.if defined(WITH_DNSDOCTOR_CGI)
DNSDOCTOR_TARGET+=	cgi
PLIST_SUB+=	DNSDOCTOR_CGI=""
.else
PLIST_SUB+=	DNSDOCTOR_CGI="@comment "

pre-everything::
	@${ECHO_MSG} "Use WITH_DNSDOCTOR_CGI=yes to install with CGI support"
.endif

do-install:
	@cd ${INSTALL_WRKSRC} && \
		${RUBY} ./installer.rb ${DNSDOCTOR_TARGET} \
		-DETCDIST='-dist' -DRUBY="${RUBY}" -DPREFIX="${PREFIX}" \
		-DWWWDIR="${PREFIX}/www/${PORTNAME}"

.if !defined(NOPORTDOCS)
post-install:
	@${MKDIR} ${DOCSDIR}
	cd ${WRKSRC} && ${INSTALL_DATA} ${DOCS} ${DOCSDIR}
.endif

.include <bsd.port.mk>
