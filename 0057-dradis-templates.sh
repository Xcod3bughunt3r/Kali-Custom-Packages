#!/bin/bash

# Grab compliance packs from Dradis

sudo mkdir -p /var/lib/dradis/compliance_packs
wget https://dradisframework.com/academy/files/dradis-ce_compliance-package_OWASPv4.zip -O /var/lib/dradis/compliance_packs/dradis-ce_compliance_package-OWASPv4.zip

wget https://dradisframework.com/academy/files/dradis-ce_compliance_package-oscp.v0.3.zip -O /var/lib/dradis/compliance_packs/dradis-ce_compliance_package-oscp.v0.3.zip

wget https://dradisframework.com/academy/files/dradis_ce_compliance_package-PTESv0.4.1.zip -O /var/lib/dradis/compliance_packs/dradis-ce_compliance_package-PTESv0.4.1.zip
