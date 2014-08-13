@CreatePostCtrl = ($scope, $location, postData) ->

	$scope.data = postData.data
	postData.loadPosts()

	$scope.formData =
		newPostTitle: ''
		newPostContents: ''

	$scope.navNewPost = ->
		$location.url('/post/new')

	$scope.navHome = ->
		$location.url('/')

	$scope.createPost = ->
		postData.createPost($scope.formData)

@CreatePostCtrl.$inject = ['$scope', '$location', 'postData']