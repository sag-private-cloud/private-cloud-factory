ARG baseruntime=sagcr.azurecr.io/esbmsr:11.0
 
FROM ${baseruntime} 
ARG wpmregistryserver=https://packages.softwareag.com
ARG wpmregistry=softwareag
ARG wpmregistrytoken=
ARG packages=
ARG custompackages=
ARG custompackagesorgurl=
 
WORKDIR /opt/softwareag
RUN [ -n "$packages" ] && ./wpm/bin/wpm.sh install ${packages} -jwt_token ${wpmregistrytoken} -ws ${wpmregistryserver} -wpr_registry ${wpmregistry} -target_installation /opt/softwareag/IntegrationServer || echo "No packages provided for installation."
RUN [ -n "$custompackages" ] && ./wpm/bin/wpm.sh install ${custompackages} -target_installation /opt/softwareag/IntegrationServer -u sag -p sag -r ${custompackagesorgurl} || echo "No custom packages provided for installation."
WORKDIR /