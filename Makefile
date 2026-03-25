.PHONY: serve
serve:
	bundle exec jekyll serve

.PHONY: deps
deps:
	gem install bundler jekyll
	bundle install
