# New ports collection makefile for:    p5-DWH_File
# Date created:                         Thu Jan  8 13:16:46 PST 2004
# Whom:                                 mharo@FreeBSD.org
#
# $FreeBSD: ports/databases/p5-DWH_File/Makefile,v 1.5 2012/11/17 05:55:15 svnexp Exp $
#

PORTNAME=	DWH_File
PORTVERSION=	0.24
PORTREVISION=	1
CATEGORIES=	databases perl5
MASTER_SITES=	CPAN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Store deep and wide hashes in single level tied hash

BUILD_DEPENDS=	p5-URI>=0:${PORTSDIR}/net/p5-URI
RUN_DEPENDS=	p5-URI>=0:${PORTSDIR}/net/p5-URI

PERL_CONFIGURE=	yes

MAN3=		DWH_File.3 DWH_File::Registry::URI.3 DWH_File::Value::Factory.3 \
		DWH_File::Tie::Array::Node.3 DWH_File::Value.3 DWH_File::Aware.3 \
		DWH_File::Tie::Scalar.3 DWH_File::Registry::Class.3 \
		DWH_File::Value::Undef.3 DWH_File::Kernel.3 DWH_File::Subscript.3 \
		DWH_File::Tie::Hash.3 DWH_File::ID_Mill.3 DWH_File::Tie.3 DWH_File::Work.3 \
		DWH_File::Subscript::Wired.3 DWH_File::Registry.3 DWH_File::Cached.3 \
		DWH_File::Tie::Hash::Node.3 DWH_File::Reference.3 DWH_File::Value::Plain.3 \
		DWH_File::Cache.3 DWH_File::Tie::Array.3 DWH_File::Slot.3 \
		DWH_File::Tie::Foreign.3 DWH_File::Tie::Subscripted.3

.include <bsd.port.mk>
