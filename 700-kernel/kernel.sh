#!/bin/bash
# To be run from the root of the build tree.
# NOT FROM THE manifest DIRECTORY!!!
# -KhasMek

manifest=.repo/manifests/700-kernel/kernel_manifest.xml

echo "adding kernel repos to your build tree"

if [ ! -d ".repo/manifests" ]; then
    mkdir ".repo/manifests"
fi

if [ -f $manifest ]; then
        echo "kernel manifest already present."
        echo "merging kernel manifests."
        cat manifest/700-kernel/kernel_manifest.xml | while read line
        do
                kernel=`grep "$line" $manifest`
                if [ -z "$kernel" ]; then
                        echo "  $line" >> $manifest
                fi
        done
        # Cleanup
        grep -Ev "^</manifest>" $manifest > '$manifest'.new
        echo "</manifest>" >> '$manifest'.new
        mv '$manifest'.new $manifest
fi

cp manifest/700-kernel/kernel_manifest.xml $manifest
echo "syncing kernel repos"
tail -n +3 manifest/700-kernel/kernel_manifest.xml | head -n -1 | cut -f2 -d '"' > .sync

. build/envsetup.sh

while read line ;do
        reposync "$line"
        echo "$line synced successfully"
done < .sync

#cleanup
rm .sync
