perl -p -i -e 's|\\compress|\%\\compress|g' ly/ily/staff-properties*
perl -p -i -e 's|\%\%\\compress|\\compress|g' ly/ily/staff-properties*
