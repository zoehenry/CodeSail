var Post = React.createClass({
  propTypes: {
    title: React.PropTypes.string,
    author: React.PropTypes.string,
    date: React.PropTypes.string,
    content: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Title: {this.props.title}</div>
        <div>Author: {this.props.author}</div>
        <div>Date: {this.props.date}</div>
        <div>Content: {this.props.content}</div>
        <br></br>
      </div>
    );
  }
});
