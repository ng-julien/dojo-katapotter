let common = [
  "src/**/*.feature",
  "--require-module ts-node/register",
  "--require src/**/*.steps.ts",
  "--format progress-bar",
  "--format node_modules/cucumber-pretty"
].join(" ");

module.exports = {
  default: common
  // More profiles can be added if desired
};
