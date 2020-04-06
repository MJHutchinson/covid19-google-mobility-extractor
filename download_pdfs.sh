date="2020-03-29"
# states="Alabama Alaska Arizona Arkansas California Colorado Connecticut Delaware Florida Georgia Hawaii Idaho Illinois Indiana Iowa Kansas Kentucky Louisiana Maine Maryland Massachusetts Michigan Minnesota Mississippi Missouri Montana Nebraska Nevada New_Hampshire New_Jersey New_Mexico New_York North_Carolina North_Dakota Ohio Oklahoma Oregon Pennsylvania Rhode_Island South_Carolina South_Dakota Tennessee Texas Utah Vermont Virginia Washington West_Virginia Wisconsin Wyoming"
# countries="US GB IT DE ES FR"

mkdir -p pdfs/${date}/
# mkdir -p ../data/GoogleMobility/data/

cat states.txt | while read state ; do
    curl -s -o pdfs/${date}/${date}_US_${state}_Mobility_Report_en.pdf https://www.gstatic.com/covid19/mobility/${date}_US_${state}_Mobility_Report_en.pdf
done

# rename the coutntries pdfs slightly to conform to similar naming convention as the individual states
cat countries.txt | while read country ; do
    curl -s -o pdfs/${date}/${date}_${country}_${country}_Mobility_Report_en.pdf https://www.gstatic.com/covid19/mobility/${date}_${country}_Mobility_Report_en.pdf
done