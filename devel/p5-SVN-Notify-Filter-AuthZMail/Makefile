# New ports collection makefile for:	SVN-Notify-Filter-AuthZMail
# Date created:		2008-07-21
# Whom:			glarkin@
#
# $FreeBSD: ports/devel/p5-SVN-Notify-Filter-AuthZMail/Makefile,v 1.4 2012/11/17 05:56:28 svnexp Exp $
#

PORTNAME=	SVN-Notify-Filter-AuthZMail
PORTVERSION=	1.01
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	glarkin@FreeBSD.org
COMMENT=	Determines Subversion accounts to receive email via the authz file

RUN_DEPENDS=	p5-SVN-Notify>=2.72:${PORTSDIR}/devel/p5-SVN-Notify \
		p5-SVN-Access>=0:${PORTSDIR}/devel/p5-SVN-Access
BUILD_DEPENDS=	p5-SVN-Notify>=2.72:${PORTSDIR}/devel/p5-SVN-Notify \
		p5-SVN-Access>=0:${PORTSDIR}/devel/p5-SVN-Access

PERL_CONFIGURE=	yes

MAN3=		SVN::Notify::Filter::AuthZMail.3

.include <bsd.port.mk>
