Padding(
padding: EdgeInsetsDirectional.fromSTEB(16, 8, 16, 8),
child: ClipRRect(
borderRadius: BorderRadius.circular(8),
child: Image.network(
'https://media-cdn.tripadvisor.com/media/photo-s/0c/74/3c/4e/sample-receipt.jpg',
width: double.infinity,
height: 200,
fit: BoxFit.cover,
),
).animateOnPageLoad(animationsMap['imageOnPageLoadAnimation']!),
)
