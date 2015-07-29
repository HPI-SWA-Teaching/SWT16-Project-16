uiFunctions
openTweetWindowWith: aText 


	self class tweetWindowInitialized < 1
		ifTrue: [self
				connect: tweetWindowUi tweetButton
				signal: #clicked:
				toSelector: #twitterTweet;
				
				connect: tweetWindowUi tweetAsPictureButton
				signal: #clicked:
				toSelector: #twitterTweetAsPicture.

			tweetWindowUi usernameLabel theText: self currentUser.
			
			tweetWindowUi thumbnail hide; scalePoint: 1@1.
			tweetWindow addMorph: tweetWindowUi panel;
				 openInWorld;
				 extent: tweetWindowUi panel extent + self class windowOffset;
				 label: 'Tweet'.
			self class tweetWindowInitialized: 1.
			^ self].
	tweetWindowUi tweetAsPictureButton enabled: false.
	tweetWindowUi tweetTextfield theText: aText.
	tweetWindowUi usernameLabel theText: self currentUser.
	tweetWindowUi thumbnail hide; scalePoint: 1@1.
	tweetWindow openInWorld; extent: tweetWindowUi panel extent + self class windowOffset