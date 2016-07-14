var Comment = React.createClass({
  propTypes: {
    content: React.PropTypes.string,
    author: React.PropTypes.string
  },

  render: function() {
    return (
      <div>
        <div>Content: {this.props.content}</div>
        <div>Author: {this.props.author}</div>
      </div>
    );
  }
});
