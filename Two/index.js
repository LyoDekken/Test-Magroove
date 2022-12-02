class ToDoItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      is_done: false,
    };
    this.updateColor = this.updateColor.bind(this);
  }

  updateColor(event) {
    if (this.state.is_done === false) {
      event.target.style.textDecoration = "line-through";
      this.setState({
        is_done: true,
      });
    } else if (this.state.is_done === true) {
      event.target.style.textDecoration = "none";
      this.setState({
        is_done: false,
      });
    }
  }

  render() {
    return <li onClick={this.updateColor}>{this.props.task}</li>;
  }
}

class ToDoList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      to_do_list: [],
    };
    this.updateTodoList = this.updateTodoList.bind(this);
  }

  updateTodoList() {
    const input = document.getElementById("id").value;

    if (input === "") {
      alert("Digite um valor");
    } else {
      const newValue = this.state.to_do_list.concat(input);

      this.setState({
        to_do_list: newValue,
      });
    }
  }

  render() {
    return (
      <div>
        <h2>Add a new task to your to-do list</h2>
        <input id="id" type="text" />
        <button type="button" onClick={this.updateTodoList}>
          Add
        </button>
        <ul>
          {this.state.to_do_list.map((to_do_list, key) => (
            <ToDoItem id={key} key={key} task={to_do_list} />
          ))}
        </ul>
      </div>
    );
  }
}

ReactDOM.render(<ToDoList />, document.getElementById("root"));
