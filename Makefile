.PHONY: analyze app coverage format full_test generate_code install perms reset_hooks run set_hooks test

env=dev

install:
	bash scripts/fvm-run.sh flutter pub get

clean:
	bash scripts/fvm-run.sh flutter clean

generate_code:
	bash scripts/fvm-run.sh flutter pub run build_runner watch --delete-conflicting-outputs --use-polling-watcher

format:
	bash scripts/fvm-run.sh flutter format .

analyze:
	bash scripts/fvm-run.sh flutter analyze .

test:
	bash scripts/fvm-run.sh flutter test

coverage:
	bash scripts/lcov-install.sh
	bash scripts/fvm-run.sh flutter test --coverage && lcov --remove coverage/lcov.info 'lib/**/*.g.dart' 'lib/**/*.freezed.dart' -o coverage/new_lcov.info && genhtml coverage/new_lcov.info -o coverage/html

full_test: format analyze test

full_coverage: format analyze coverage

app:
	if [ ! -d "lib/src/${name}" ]; then mkdir -p lib/src/${name} && cp -r module_template/* "lib/src/${name}"; fi
	if [ ! -d "test/src/${name}" ]; then mkdir -p test/src/${name} && cp -r module_template/* "test/src/${name}"; fi

run-debug: .env.$(env)
	bash scripts/fvm-run.sh flutter run 

run-release: .env.$(env)
	bash scripts/fvm-run.sh flutter run --flavor $(env) -t lib/main.dart --release $(shell awk '{print "--dart-define=" $$0}' .env.$(env))

build-apk: .env.$(env)
	bash scripts/fvm-run.sh flutter build apk --flavor $(env) -t lib/main.dart $(shell awk '{print "--dart-define=" $$0}' .env.$(env))

build-ipa: .env.$(env)
	bash scripts/fvm-run.sh flutter build ipa --flavor $(env) -t lib/main.dart $(shell awk '{print "--dart-define=" $$0}' .env.$(env))

build-appbundle: .env.$(env)
	bash scripts/fvm-run.sh flutter build appbundle --flavor $(env) -t lib/main.dart $(shell awk '{print "--dart-define=" $$0}' .env.$(env))

setup-fvm:
	dart pub global activate fvm
	fvm install

setup-verify:
	bash scripts/setup-verify.sh