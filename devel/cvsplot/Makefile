# ex:ts=8
# Ports collection makefile for:	cvsplot
# Date created:			May 31, 2002
# Whom:				ijliao
#
# $FreeBSD: ports/devel/cvsplot/Makefile,v 1.24 2012/11/17 05:55:39 svnexp Exp $
#

PORTNAME=	cvsplot
PORTVERSION=	1.7.4
PORTREVISION=	4
CATEGORIES=	devel perl5
MASTER_SITES=	SF

MAINTAINER=	erik@bz.bzflag.bz
COMMENT=	A perl script which analyses the history of a CVS-managed project

RUN_DEPENDS=	p5-Date-Manip>=0:${PORTSDIR}/devel/p5-Date-Manip \
		p5-String-ShellQuote>=0:${PORTSDIR}/textproc/p5-String-ShellQuote \
		gnuplot:${PORTSDIR}/math/gnuplot

USE_PERL5=	yes
NO_BUILD=	yes
PLIST_FILES=	bin/cvsplot

post-patch:
	@${PERL} -pi -e "s,^#!/usr/bin/perl -w,#!/usr/bin/env perl -w,g" ${WRKSRC}/cvsplot.pl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cvsplot.pl ${PREFIX}/bin/cvsplot

.include <bsd.port.mk>
