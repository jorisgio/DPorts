# ex:ts=8
# Ports collection makefile for:	zoidberg
# Date created:			Sep 24, 2004
# Whom:				ijliao
#
# $FreeBSD: ports/shells/zoidberg/Makefile,v 1.13 2012/11/17 06:01:24 svnexp Exp $
#

PORTNAME=	zoidberg
PORTVERSION=	0.96
PORTREVISION=	3
CATEGORIES=	shells perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:PARDUS
DISTNAME=	Zoidberg-${PORTVERSION}

MAINTAINER=	perl@FreeBSD.org
COMMENT=	A modular PERL shell

BUILD_DEPENDS=	p5-Exporter-Tidy>=0:${PORTSDIR}/devel/p5-Exporter-Tidy \
		p5-Term-ReadLine-Zoid>=0:${PORTSDIR}/devel/p5-Term-ReadLine-Zoid \
		p5-Env-PS1>=0:${PORTSDIR}/devel/p5-Env-PS1
RUN_DEPENDS=	p5-Exporter-Tidy>=0:${PORTSDIR}/devel/p5-Exporter-Tidy \
		p5-Term-ReadLine-Zoid>=0:${PORTSDIR}/devel/p5-Term-ReadLine-Zoid \
		p5-Env-PS1>=0:${PORTSDIR}/devel/p5-Env-PS1

PERL_MODBUILD=	yes
CONFIGURE_ARGS=	install_path=share="${DATADIR}" \
		install_path=share="${ETCDIR}"

.if !defined(NOPORTDOCS)
PORTDOCS=	Changes	README
.endif

.if !defined(NOPORTEXAMPLES)
PORTEXAMPLES=	Menu.pl	cpan.pl	word_expansion.pl
.endif

MAN1=	zoid.1 zoiddevel.1 zoidfaq.1 zoiduser.1 zoidbuiltins.1
MAN3=	Bundle::Zoidberg.3 \
	Zoidberg.3 \
	Zoidberg::Contractor.3 \
	Zoidberg::DispatchTable.3 \
	Zoidberg::Fish.3 \
	Zoidberg::Fish::Commands.3 \
	Zoidberg::Fish::Intel.3 \
	Zoidberg::Fish::Log.3 \
	Zoidberg::Fish::ReadLine.3 \
	Zoidberg::PluginHash.3 \
	Zoidberg::Shell.3 \
	Zoidberg::StringParser.3 \
	Zoidberg::Utils.3 \
	Zoidberg::Utils::Error.3 \
	Zoidberg::Utils::FileSystem.3 \
	Zoidberg::Utils::GetOpt.3 \
	Zoidberg::Utils::Output.3

post-install:
	@${ECHO_CMD} ${PREFIX}/bin/zoid >> /etc/shells

.if !defined(NOPORTDOCS)
	@${MKDIR} ${DOCSDIR}
.for file in ${PORTDOCS}
	${INSTALL_SCRIPT} ${WRKSRC}/${file} ${DOCSDIR}
.endfor
.endif

.if !defined(NOPORTEXAMPLES)
	@${MKDIR} ${EXAMPLESDIR}
.for file in ${PORTEXAMPLES}
	${INSTALL_SCRIPT} ${WRKSRC}/doc/examples/${file} ${EXAMPLESDIR}
.endfor
.endif

.include <bsd.port.mk>
