GENERATED_CLASSES := manifests/chaos_properties.pp \
					 manifests/client_properties.pp \
					 manifests/conformity_properties.pp \
					 manifests/janitor_properties.pp \
					 manifests/simianarmy_properties.pp \
					 manifests/volume_tagging_properties.pp

ci: clean Gemfile.lock generated
	bundle exec rake

generated: $(GENERATED_CLASSES)

Gemfile.lock: Gemfile
	bundle install

manifests/%.pp: generate/%.yaml
	gen_java_properties_class $<

clean:
	rm -rf pkg test/integration/modules log junit

test-integration:
	echo "TODO"

build:
	bundle exec puppet module build .

.PHONY: ci clean test-integration build generated
