# New ports collection makefile for:   	man2html
# Date created:				29 August 1998
# Whom:                			Dima Sivachenko <demon@gpad.ac.ru>
#
# $FreeBSD: ports/textproc/man2html/Makefile,v 1.15 2012/11/17 06:02:02 svnexp Exp $
#

PORTNAME=	man2html
PORTVERSION=	3.0.1
PORTREVISION=	1
CATEGORIES=	textproc
MASTER_SITES=	http://hydra.nac.uci.edu/indiv/ehood/tar/ \
		ftp://ftp.cpan.org/pub/CPAN/modules/by-authors/Earl_Hood/
DISTNAME=	${PORTNAME}${PORTVERSION}

MAINTAINER=	demon@FreeBSD.org
COMMENT=	Convert nroff(1) man pages to HTML

USE_PERL5=	yes
NO_BUILD=	yes
CGIDIR=		${PREFIX}/www/cgi-bin

MAN1=		man2html.1
PLIST_FILES=	bin/man2html

post-patch:
	${PERL} -pi -e "s#/usr/local/bin/perl#${PERL5}#" ${WRKSRC}/man.cgi ${WRKSRC}/man2html

do-install:

	cd ${WRKSRC} && \
	${PERL5} ${WRKSRC}/install.me -batch -binpath ${PREFIX}/bin \
	-manpath ${PREFIX}/man -libpath ${PREFIX}/lib \
	-perlpath ${PERL5}
	if [ -d ${CGIDIR} ] ; then \
		${INSTALL_SCRIPT} ${WRKSRC}/man.cgi ${CGIDIR} ; \
	fi

.include <bsd.port.mk>
