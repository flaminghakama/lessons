if [ "$1" == "2.19" ] ; then
    # Revert back to 2.19
    perl -p -i -e 's| \\compressEmptyMeasures| %\\compressEmptyMeasures|g' ly/ily/staff-properties*
    perl -p -i -e 's| %\\compressMMRests| \\compressMMRests|g' ly/ily/staff-properties*
else 
    # Advance to 2.23
    perl -p -i -e 's| %\\compressEmptyMeasures| \\compressEmptyMeasures|g' ly/ily/staff-properties*
    perl -p -i -e 's| \\compressMMRests| %\\compressMMRests|g' ly/ily/staff-properties*
fi
