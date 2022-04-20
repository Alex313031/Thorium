## Windows native build trunk script.
# Copyright (c) 2022 Alex313031. 

cd C:\chromium\src\v8 &&

git checkout -f origin/main &&

cd C:\chromium\src &&

git checkout -f origin/main &&

git rebase-update &&

git fetch --tags &&

gclient sync -D &&

gclient sync --with_branch_heads --with_tags &&

gclient runhooks &&

python tools\update_pgo_profiles.py --target=win64 update --gs-url-base=chromium-optimization-profiles/pgo_profiles &&

exit 0
