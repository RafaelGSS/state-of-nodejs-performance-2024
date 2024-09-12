# I know that this probably isn't so efficient
# cause I'm running benchmark for v20 twice


# assert
echo "assert...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  assert  > compare-assert-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  assert  > compare-assert-20-22.csv

# # crypto
# echo "crypto...\n"
# node benchmark/compare.js \
#   --old ./node18 \
#   --new ./node20 \
#   crypto  > compare-crypto-18-20.csv

# node benchmark/compare.js \
#   --old ./node20 \
#   --new ./node22 \
#   assert  > compare-crypto-20-22.csv

# diagnostics_channel
echo "diagnostics_channel...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  diagnostics_channel  > compare-dc-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  diagnostics_channel  > compare-dc-20-22.csv

# error
echo "error...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "error.js" \
  --filter "node-error*" \
  error  > compare-dc-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "error.js" \
  --filter "node-error*" \
  error  > compare-dc-20-22.csv

# esm
echo "esm...\n"
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
echo "fs...\n"
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
echo "events...\n"
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
# echo "http...\n"
# node benchmark/compare.js \
#   --old ./node18 \
#   --new ./node20 \
#   --filter "client-request-body.js" \
#   --filter "bench-parser.js" \
#   --filter "simple.js" \
#   http  > compare-http-18-20.csv

# node benchmark/compare.js \
#   --old ./node20 \
#   --new ./node22 \
#   --filter "client-request-body.js" \
#   --filter "bench-parser.js" \
#   --filter "simple.js" \
#   http  > compare-http-20-22.csv

# misc
echo "misc...\n"
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
echo "module...\n"
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
echo "path...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "*-posix.js" \
  path  > compare-path-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "*-posix.js" \
  module  > compare-module-20-22.csv

# streams
echo "streams...\n"
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
echo "test_runner...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  test_runner  > compare-test-runner-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  test_runner  > compare-test-runner-20-22.csv

# url
echo "url...\n"
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
echo "webstreams...\n"
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
echo "zlib...\n"
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
echo "buffers...\n"
node benchmark/compare.js \
  --old ./node18 \
  --new ./node20 \
  --filter "buffer-*" \
  buffers  > compare-buffers-18-20.csv

node benchmark/compare.js \
  --old ./node20 \
  --new ./node22 \
  --filter "buffer-*" \
  buffers  > compare-buffers-20-22.csv

# util
echo "util...\n"
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
