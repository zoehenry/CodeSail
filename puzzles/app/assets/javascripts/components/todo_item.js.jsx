var TodoItem = React.createClass({
  propTypes: {
    id: React.PropTypes.string,
    name: React.PropTypes.string,
    doAjax: React.PropTypes.func
  },

  onClick: function(event) {
    event.preventDefault();

    $.ajax({
      type: "GET",
      url: "/finish/" + this.props.id,
      context: this,
      success: function(response) {
        this.props.doAjax();
      }
    });
  },

  render: function() {
    return (
      <li>
        <a href = {'/finish/' + this.props.id} onClick={this.onClick}>
          <i className="fa fa-check-circle-o"></i>
          </a>
          &nbsp;
          {this.props.name}
      </li>
    );
  }
});
