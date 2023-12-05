# How to update package where binary data for the package lives somewhere else (Maven)

1. Download the package you want to point the package to. Make sure you don't extract it. You need original zip file. Public maven repo is here: https://public.repo.sygic.com/

2. Compute sha checksum using: shasum -a 256 zipname.zip | sed 's/ .*//' 

3. Update target url in Package.switf and new checksum

4. commit with using some meaningful message, something like "Updated to version 25.2.1"

5. add tag, same as version you just updated. So for 25.2.1 -> git tag 25.2.1

6. push updated package + tags (git push, git push origin --tags)

7. Done.



