# New ports collection makefile for:    p5-Filter
# Date created:				June 26th 1997
# Whom:	      				James FitzGibbon <jfitz@FreeBSD.org>
#
# $FreeBSD: ports/devel/p5-Filter/Makefile,v 1.36 2012/11/17 05:56:17 svnexp Exp $
#

PORTNAME=	Filter
PORTVERSION=	1.45
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A number of source filters for perl5 programs

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

PERL_CONFIGURE=	yes

MAKE_JOBS_UNSAFE=	yes

MAN3=		Filter::Util::Call.3 \
		Filter::Util::Exec.3 \
		Filter::cpp.3 \
		Filter::decrypt.3 \
		Filter::exec.3 \
		Filter::sh.3 \
		Filter::tee.3 \
		perlfilter.3

.include <bsd.port.mk>
