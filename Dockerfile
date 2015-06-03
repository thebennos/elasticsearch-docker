#
# Custom elasticsearch image with plugins
#
# http://github.com/tenstartups/elasticsearch
#
FROM elasticsearch:latest

MAINTAINER Marc Lennox <marc.lennox@gmail.com>

# Install plugins
RUN \
  cd /usr/share/elasticsearch && \
  bin/plugin -install mobz/elasticsearch-head && \
  bin/plugin -install lukas-vlcek/bigdesk && \
  bin/plugin -install royrusso/elasticsearch-HQ && \
  bin/plugin --install lmenezes/elasticsearch-kopf/master && \
  bin/plugin -install karmi/elasticsearch-paramedic
