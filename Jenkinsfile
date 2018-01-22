pipeline
{
	agent any

	environment
	{
		APP="TestingDemo"
	}

	stages
	{
		stage("Initialize")
		{
			steps
			{
				sh '''
					rm -rf *.xcarchive
					rm *.ipa
				   '''
			}
		}

		stage("Build")
		{
			steps
			{
				echo "building app"

				sh '''
					xcodebuild archive -archivePath $APP.xcarchive -scheme $APP
					xcodebuild -target $APP -exportArchive -archivePath $APP.xcarchive -exportPath $APP.ipa #-exportOptionsPlist $APP/Info.plist
				   '''
			}
		}

		stage("Publish")
		{
			steps
			{
				archive TestingDemo.ipa
			}
		}
	}
}

