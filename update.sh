
KEYNAME=support@arducam.com

# Packages & Packages.gz
dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages

# Release, Release.gpg & InRelease
apt-ftparchive release . > Release
gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease

# Commit & push
git add -A
git commit -m update
git push