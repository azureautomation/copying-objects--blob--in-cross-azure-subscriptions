#=======================================
#Put Your Source Storage Account Name
#=======================================
$MySourceStorageAccountName = ""

#=======================================
#Put Your Storage Key of Source Account
#=======================================
$MySourceStorageAccountKey = ""
$MySourceContainerName = ""
$MySourceContext = New-AzureStorageContext -StorageAccountName $MySourceStorageAccountName -StorageAccountKey $MySourceStorageAccountKey

#=======================================
#Put Your Destination Storage Account
#=======================================
$MyDestinationStorageAccount = ""

#=======================================
#Put Your Storage Key of Destination Account
#=======================================
$DestStorageAccountKey = ""

#=======================================
#Put Your Destination Container Name
#=======================================
$MyDestinationContainerName = ""
$MyDestinationContext = New-AzureStorageContext -StorageAccountName $MyDestinationStorageAccount -StorageAccountKey $DestStorageAccountKey

#=======================================
#Get a reference to blobs in the source container.
#=======================================
$blobs = Get-AzureStorageBlob -Container $MySourceContainerName -Context $MySourceContext

#=======================================
# Copy blob(Data) Source to Destination container
#=======================================
$blobs| Start-AzureStorageBlobCopy -DestContainer $MyDestinationContainerName -DestContext $MyDestinationContext
