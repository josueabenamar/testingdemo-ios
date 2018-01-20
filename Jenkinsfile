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
					xcodebuild -list
					xcodebuild archive -archivePath $APP.xcarchive -project $APP.xcodeproj -configuration Debug
					xcodebuild -target $APP -exportArchive -archivePath $APP.xcarchive -exportPath $APP.ipa -exportOptionsPlist $APP/Info.plist
				   '''
			}
		}
	}
}

