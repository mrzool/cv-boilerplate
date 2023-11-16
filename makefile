# Define the Pandoc command
TEX = pandoc

# Flags for Pandoc, specifying the PDF engine
FLAGS = --pdf-engine=xelatex

# Source file and template for the CV
SRC = details.yml
TEMPLATE = template.tex

# Output file name
OUTPUT = output.pdf

# Docker image name
DOCKER_IMAGE = cv-boilerplate

# Phony targets for actions without output files
.PHONY: all clean docker

# Default target
all: $(OUTPUT)

# Rule to generate the CV PDF
$(OUTPUT): $(SRC) $(TEMPLATE)
	# Run the Pandoc command inside a Docker container
	docker run -v $(CURDIR):/data --rm -it $(DOCKER_IMAGE) $(TEX) $(SRC) -o $@ --template=$(TEMPLATE) $(FLAGS)
	# Open the generated PDF
	open $@

# Rule to clean up generated files
clean:
	rm -f $(OUTPUT)

# Rule to build the Docker container
docker:
	# Build the Docker image for LaTeX
	docker build --pull -t $(DOCKER_IMAGE) .
	docker image prune -f --filter label=dockerimage=cv-boilerplate
