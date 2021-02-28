###########################################################
# Dockerfile that builds a docker image containing a 
# Valheim Dedicated Server
###########################################################
FROM cm2network/steamcmd:latest

LABEL maintainer="michael.garde@gmail.com"

ARG STEAMAPPID

# steamcmd config (do not change)
ENV LD_LIBRARY_PATH "./linux64:${LD_LIBRARY_PATH}"
ENV STEAMAPPDIR "${HOMEDIR}/steamapp"
ENV STEAMAPPID "${STEAMAPPID}"

# Switch to user
USER ${USER}

# Switch to workdir
WORKDIR ${HOMEDIR}
RUN mkdir -p "steamapp"

# Setup Valheim Dedicated Server using steamcmd
RUN bash "${STEAMCMDDIR}/steamcmd.sh" +login anonymous +force_install_dir "${STEAMAPPDIR}" +app_update "${STEAMAPPID}" validate +quit

# Switch to where steamcmd installed the steamapp
WORKDIR ${STEAMAPPDIR}

# Copy 
COPY start_server_custom.sh .
CMD [ "bash", "./start_server_custom.sh" ]