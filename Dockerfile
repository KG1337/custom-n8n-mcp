FROM n8nio/n8n:next

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp

environment:
  - N8N_COMMUNITY_PACKAGES_ALLOW_TOOL_USAGE=true

# Revert to the node user for security purposes
USER node

