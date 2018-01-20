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
					xcodebuild archive -archivePath $APP.xcarchive -scheme $APP -project $APP.xcodeproj
					xcodebuild -target $APP -exportArchive -archivePath $APP.xcarchive -exportPath $APP.ipa -exportOptionsPlist $APP/Info.plist
				   '''
			}
		}
	}
}

