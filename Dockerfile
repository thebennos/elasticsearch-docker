#
# Custom elasticsearch image with plugins
#
# http://github.com/tenstartups/elasticsearch
#
FROM elasticsearch:latest

MAINTAINER Marc Lennox <marc.lennox@gmail.com>

# Install plugins
RUN \
  cd /elasticsearch && \
  bin/plugin -i mobz/elasticsearch-head
