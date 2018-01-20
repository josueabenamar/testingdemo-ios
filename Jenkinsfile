pipeline
{
	agent any

	environment
	{
		APP=TestingDemo
	}

	stages
	{
		stage("Build")
		{
			steps
			{
				echo "building app"

				sh '''
					xcodebuild archive -archivePath $APP.xcarchive -scheme $APP
				   '''
			}
		}
	}
}

