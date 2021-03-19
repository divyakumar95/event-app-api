# Use Google base image for NodeJS
FROM launcher.gcr.io/google/nodejs
RUN node -v
RUN npm -v
# Copy application code.
COPY . /app/
# Change the working directory in image
WORKDIR /app
# Install dependencies.
RUN npm install
#expose port
EXPOSE 8082
# Start the Express app
#RUN npm start
CMD node ./src/server.js
