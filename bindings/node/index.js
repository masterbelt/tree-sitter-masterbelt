const { join } = require("node:path");
const { readFileSync } = require("node:fs");

const root = join(__dirname, "..", "..");
const binding = require("node-gyp-build")(root);

try {
  binding.nodeTypeInfo = require(join(root, "src", "node-types.json"));
} catch (_) {
  // node-types.json is optional metadata; ignore when absent.
}

Object.defineProperty(binding, "HIGHLIGHTS_QUERY", {
  configurable: true,
  enumerable: true,
  get() {
    delete binding.HIGHLIGHTS_QUERY;
    try {
      binding.HIGHLIGHTS_QUERY = readFileSync(join(root, "queries", "highlights.scm"), "utf8");
    } catch (_) {
      // queries are optional; leave undefined when absent.
    }
    return binding.HIGHLIGHTS_QUERY;
  },
});

module.exports = binding;
