#!/bin/bash
# Need to make sure that firefox is installed first
sudo apt install -y firefox-esr

sudo mkdir -p /root/.mozilla/firefox/
cat << EOF > /root/.mozilla/firefox/user.js
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.first_run", false);
user_pref("app.update.enabled", false);
user_pref("app.update.auto", false);
user_pref("app.update.silent", true);
user_pref("app.update.staging.enabled", false);
user_pref("browser.search.geoip.url", "");
user_pref("browser.search.update", false);
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.startup.homepage", "");
user_pref("browser.startup.homepage_override.mstone", "ignore");
user_pref("network.captive-portal-service.enabled", false);
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.policy.dataSubmissionEnabled", false);
user_pref("extensions.blocklist.enabled", false);
user_pref("extensions.getAddons.cache.enabled", false);
user_pref("extensions.systemAddon.update.enabled", false);
user_pref("extensions.update.enabled", false);
user_pref("fission.autostart", false);
user_pref("startup.homepage_override_url", "http://example.org/");
user_pref("startup.homepage_welcome_url", "");
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.reportingpolicy.firstRun", false);
user_pref("toolkit.telemetry.updatePing.enabled", false);
user_pref("browser.selfsupport.url", "");
user_pref("services.sync.nextSync", 0);
EOF

# Download and add foxyproxy_standard...version will need to be updated over time
wget https://addons.mozilla.org/firefox/downloads/file/3476518/foxyproxy_standard-7.4.3-an+fx.xpi -O /tmp/foxyproxy_standard-7.4.3.xpi
sudo mkdir -p /root/.mozilla/extensions
sudo mv /tmp/foxyproxy_standard-7.4.3.xpi /root/.mozilla/extensions/
