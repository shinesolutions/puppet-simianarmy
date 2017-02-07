SIMIAN_ARMY_GIT := ../SimianArmy-git

PROPERTY_FILE_ROOTS = chaos client conformity janitor log4j simianarmy
PROPERTY_FILES = $(addprefix manifests/,$(addsuffix _properties.pp,$(PROPERTY_FILE_ROOTS)))

all: $(PROPERTY_FILES) manifests/volume_tagging_properties.pp

manifests/volume_tagging_properties.pp: ${SIMIAN_ARMY_GIT}/src/main/resources/volumeTagging.properties
	tools/parse_application_properties \
		--class-prefix simianarmy \
		--class-name volume_tagging_properties \
		--template-file templates/volume_tagging_properties.erb \
		--spec-file spec/classes/volume_tagging_properties_spec.rb \
		--class-file $@ \
		$<

manifests/%_properties.pp: ${SIMIAN_ARMY_GIT}/src/main/resources/%.properties
	tools/parse_application_properties \
		--class-prefix simianarmy \
		--class-name $*_properties \
		--template-file templates/$*_properties.erb \
		--spec-file spec/classes/$*_properties_spec.rb \
		--class-file $@ \
		$<

ci: tools clean lint

clean:
	rm -rf pkg
	rm -rf test/integration/modules/

lint:
	puppet-lint \
		--fail-on-warnings \
		--no-140chars-check \
		--no-autoloader_layout-check \
		--no-documentation-check \
		--no-only_variable_string-check \
		--no-selector_inside_resource-check \
		test/integration/*

test-integration:
	echo "TODO"

build:
	puppet module build .

tools:
	gem install puppet puppet-lint

.PHONY: ci clean lint test-integration build tools all
