FROM  node:14-alpine

# The WORKDIR instruction sets the working directory for any RUN, CMD, ENTRYPOINT, COPY and ADD instructions that follow it in the Dockerfile.
# If the WORKDIR doesn’t exist, it will be created even if it’s not used in any subsequent Dockerfile instruction.
WORKDIR /usr/app

# COPY ./ ./ Allows the docs of my project to be available inside the container 
# first argument "./package.json" -> path to folder to copy from on my machine relative to build context; second argument ./ -> place to copy stuff to into my container
COPY ./package.json ./

RUN npm install

COPY ./ ./

CMD ["npm", "start"]