var Todo = React.createClass({
  propTypes: {
    csrf: React.PropTypes.string,
    todoURL: React.PropTypes.string,
    todos: React.PropTypes.array
  },

  getInitialState: function() {
    return {
      todoItems: []
    };
  },

  onSuccess: function(response) {
    this.setState({
      todoItems: response
    });

    $("#todo").val("");
  },

  doAjax: function(data) {
    $.ajax({
      type: data ? "POST": "GET",
      url: "/",
      data: data ? data : null,
      dataType: 'json',
      success: this.onSuccess
    });
  },

  onSubmit: function(event) {
    event.preventDefault();

    var form = $(".todo-form");
    var data = form.serialize();

    if ($("#todo").val()){
      this.doAjax(data);
    }

  },

  componentDidMount: function() {
    this.doAjax();
  },

  makeTodoItems: function() {
    var todoItems = [];
    var item;
    var todoItem;
    for (var i = 0; i < this.state.todoItems.length; i++) {
      item = this.state.todoItems[i];
      todoItem = (
        <TodoItem id={i} name={item} doAjax={this.doAjax}></TodoItem>
      );
      todoItems.push(todoItem);
    }

    return todoItems;
  },

  render: function() {
    return (
      <div>
        <form className="todo-form" action={this.props.todoURL} method="POST" onSubmit={this.onSubmit}>
          <input type="hidden" name="authenticity_token" id="authenticity_token" value={this.props.csrf}/>
          <label htmlFor="todo">Add an item todo:</label>
          <input id="todo" type="text" name="todo"></input>
          <input id="todo-submit" type="submit" value="Add"></input>
        </form>
        <ul class="todo-list">
          {this.makeTodoItems()}
        </ul>
      </div>
    );
  }
});
