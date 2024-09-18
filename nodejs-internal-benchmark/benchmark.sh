# I know that this probably isn't so efficient
# cause I'm running benchmark for v20 twice


# assert
echo "assert..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  assert  > compare-assert-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  assert  > compare-assert-20-22.csv

# crypto
echo "crypto..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "create-hash.js" \
  --filter "randomUUID.js" \
  --filter "oneshot-sign.js" \
  crypto  > compare-crypto-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "create-hash.js" \
  --filter "randomUUID.js" \
  --filter "oneshot-sign.js" \
  assert  > compare-crypto-20-22.csv

# diagnostics_channel
echo "diagnostics_channel..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  diagnostics_channel  > compare-dc-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  diagnostics_channel  > compare-dc-20-22.csv

# error
echo "error..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "error.js" \
  --filter "node-error*" \
  error  > compare-error-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "error.js" \
  --filter "node-error*" \
  error  > compare-error-20-22.csv

# esm
echo "esm..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "cjs-parse.js" \
  --filter "esm-loader-import.js" \
  esm  > compare-esm-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "cjs-parse.js" \
  --filter "esm-loader-import.js" \
  esm  > compare-esm-20-22.csv

# fs
echo "fs..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "bench-*" \
  --filter "readfile.js" \
  --filter "writefile-promises.js" \
  fs  > compare-fs-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "bench-*" \
  --filter "readfile.js" \
  --filter "writefile-promises.js" \
  fs  > compare-fs-20-22.csv

# events
echo "events..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "ee-add-remove.js" \
  --filter "ee-emit.js" \
  --filter "ee-listener-unique.js" \
  --filter "ee-once.js" \
  --filter "eventtarget-add-remove.js" \
  --filter "eventtarget.js" \
  events  > compare-events-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "ee-add-remove.js" \
  --filter "ee-emit.js" \
  --filter "ee-listener-unique.js" \
  --filter "ee-once.js" \
  --filter "eventtarget-add-remove.js" \
  --filter "eventtarget.js" \
  events  > compare-events-20-22.csv

# http
echo "http..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "client-request-body.js" \
  --filter "bench-parser.js" \
  --filter "simple.js" \
  http  > compare-http-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "client-request-body.js" \
  --filter "bench-parser.js" \
  --filter "simple.js" \
  http  > compare-http-20-22.csv

# misc
echo "misc..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "trace.js" \
  --filter "structured-clone.js" \
  --filter "startup*" \
  misc  > compare-misc-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "trace.js" \
  --filter "structured-clone.js" \
  --filter "startup*" \
  misc  > compare-misc-20-22.csv

# module
echo "module..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "module-require.js" \
  --filter "module-loader.js" \
  module  > compare-module-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "module-require.js" \
  --filter "module-loader.js" \
  module  > compare-module-20-22.csv

# path
echo "path..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "basename-posix.js" \
  --filter "dirname-posix.js" \
  --filter "extname-posix.js" \
  --filter "format-posix.js" \
  --filter "isAbsolute-posix.js" \
  --filter "join-posix.js" \
  --filter "normalize-posix.js" \
  --filter "relative-posix.js" \
  --filter "resolve-posix.js" \
  --filter "toNamespacedPath-posix.js" \
  path  > compare-path-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "basename-posix.js" \
  --filter "dirname-posix.js" \
  --filter "extname-posix.js" \
  --filter "format-posix.js" \
  --filter "isAbsolute-posix.js" \
  --filter "join-posix.js" \
  --filter "normalize-posix.js" \
  --filter "relative-posix.js" \
  --filter "resolve-posix.js" \
  --filter "toNamespacedPath-posix.js" \
  module  > compare-module-20-22.csv

# streams
echo "streams..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "creation.js" \
  --filter "destroy.js" \
  --filter "pipe.js" \
  --filter "readable-async-iterator.js" \
  --filter "readable-bigread.js" \
  --filter "readable-from.js" \
  --filter "pipe.js" \
  streams  > compare-streams-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "creation.js" \
  --filter "destroy.js" \
  --filter "pipe.js" \
  --filter "readable-async-iterator.js" \
  --filter "readable-bigread.js" \
  --filter "readable-from.js" \
  --filter "pipe.js" \
  streams  > compare-streams-20-22.csv

# test_runner
echo "test_runner..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  test_runner  > compare-test-runner-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  test_runner  > compare-test-runner-20-22.csv

# url
echo "url..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "url-format.js" \
  --filter "url-parse.js" \
  --filter "url-resolve.js" \
  url  > compare-url-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "url-format.js" \
  --filter "url-parse.js" \
  --filter "url-resolve.js" \
  url  > compare-url-20-22.csv

# webstreams
echo "webstreams..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "creation.js" \
  --filter "readable-read.js" \
  --filter "js_transfer.js" \
  webstreams  > compare-webstreams-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "creation.js" \
  --filter "readable-read.js" \
  --filter "js_transfer.js" \
  webstreams  > compare-webstreams-20-22.csv

# zlib
echo "zlib..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "creation.js" \
  --filter "pipe.js" \
  --filter "deflate.js" \
  --filter "inflate.js" \
  zlib  > compare-zlib-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "creation.js" \
  --filter "pipe.js" \
  --filter "deflate.js" \
  --filter "inflate.js" \
  zlib  > compare-zlib-20-22.csv

# buffers
echo "buffers..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "buffer-" \
  buffers  > compare-buffers-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "buffer-" \
  buffers  > compare-buffers-20-22.csv

# util
echo "util..."
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "text-" \
  util  > compare-util-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "text-" \
  util  > compare-util-20-22.csv
