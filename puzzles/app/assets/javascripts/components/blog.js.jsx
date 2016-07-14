var Blog = React.createClass({
  propTypes: {
    csrf: React.PropTypes.string,
    listOfPosts: React.PropTypes.array
  },

  //using the welcome controller
  // makePosts: function () {
  //   var blogPosts = [];
  //   var post;
  //   var blogPost;
  //   for (var i = 0; i < this.props.listOfPosts.length; i++) {
  //     post = this.props.listOfPosts[i];
  //     blogPost = <Post title={post[0]} author={post[1]} date={post[2]} content={post[3]}></Post>;
  //     blogPosts.push(blogPost);
  //   }
  //
  //   return blogPosts;
  // },

  //using the blog controller
  render: function() {
    var posts = [];
    var title;
    var author;
    var content;

    for (var i = 0; i < this.props.listOfPosts.length; i++) {
      post = this.props.listOfPosts[i];
      title = post.title;
      author = post.author;
      content = post.content;
      posts.push(<Post title={title} author={author} content={content}/>);
    }
    return (
      // using the welcome controller
      // <div>
      //   <div>List Of Posts: {this.makePosts()}</div>
      // </div>

      //using blog controller
      <div>
        <div>Posts: {posts}</div>
      </div>
    );
  }
});
