module.exports =

	siteName: 'Gridsome'

	plugins: [
		...(require '../plugins') [
			use: 'whitelist'
			options: [
				/\.(s?c|sa)ss$/
				/^vuetify/
			]
			'coffeescript'
			'vuetify'
		]
		'gridsome-plugin-pug'
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
		'gridsome-plugin-netlify-cms'
		# use: '@gridsome/source-wordpress'
		# options:
		# 	baseURL: 'https://public-api.wordpress.com'
		# 	apiBase: 'wp/v2/sites/monbacasable791285989.wordpress.com'
		# 	# typeName: 'WordPress'
		# 	customEndpoints: [
		# 		typeName: 'WordPress'
		# 		route: '/posts'
		# 		normalize: yes
		# 	]
	]

	transformers:
		remark:
			externalLinksTarget: '_blank'
			externalLinksRel: ['nofollow', 'noopener', 'noreferrer']
			anchorClassName: 'icon icon-link'
			plugins: []
		netlify: {}

	css:
		loaderOptions:
			sass:
				sassOptions:
					indentedSyntax: yes