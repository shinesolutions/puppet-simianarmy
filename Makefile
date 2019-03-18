GENERATED_CLASSES := manifests/chaos_properties.pp \
					 manifests/client_properties.pp \
					 manifests/conformity_properties.pp \
					 manifests/janitor_properties.pp \
					 manifests/simianarmy_properties.pp \
					 manifests/volume_tagging_properties.pp

ci: clean deps lint generated package
	bundle exec rake

generated: $(GENERATED_CLASSES)

deps:
	gem install bundler
	bundle config --local path vendor/bundle
	bundle install --binstubs

lint:
	bundle exec puppet-lint \
		--fail-on-warnings \
		--no-140chars-check \
		--no-autoloader_layout-check \
		--no-documentation-check \
		manifests/*/*.pp \
		manifests/*.pp
	# puppet epp validate templates/*.epp
	# bundle exec rubocop --config .rubocop.yml Gemfile
	pdk validate metadata

manifests/%.pp: generate/%.yaml
	gen_java_properties_class $<

clean:
	rm -rf pkg test/integration/modules log junit

test-integration:
	echo "TODO"

package:
	pdk build --force

release:
	rtk release

.PHONY: ci clean deps lint test-integration package generated release
