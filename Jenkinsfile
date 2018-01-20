pipeline
{
	agent any

	environment
	{
		APP="TestingDemo"
	}

	stages
	{
		stage("Build")
		{
			steps
			{
				echo "building app"

				sh '''
					xcodebuild -target $APP -exportArchive -archivePath $APP.xcarchive -exportPath $APP.ipa -exportOptionsPlist $APP/Info.plist
					#xcodebuild archive -archivePath $APP.xcarchive #-scheme $APP
				   '''
			}
		}
	}
}

