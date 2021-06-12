const { getConfigurationByFile } = require('../config/getConfigurationByFile')
const cucumber = require('cypress-cucumber-preprocessor').default
const { lighthouse, pa11y, prepareAudit } = require("cypress-audit");

module.exports = (on, config) => {
  const file = config.env.configFile
  on('file:preprocessor', cucumber())
  on("before:browser:launch", (browser = {}, launchOptions) => {
    prepareAudit(launchOptions);
  });
  on('task', {
    lighthouse: lighthouse(),
    pa11y: pa11y(console.log.bind(console)),
  })
  return getConfigurationByFile(file)
}
// From here we can call the Task to execute external libaries