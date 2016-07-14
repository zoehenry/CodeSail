var Atm = React.createClass({

  getInitialState: function() {
    return {balance: 100};
  },

  deposit: function(e) {
    e.preventDefault();
    var deposit = $(".deposit").val();
    var currentBalance = this.state.balance + parseInt(deposit);

    if (Number.isInteger(parseInt(deposit))) {
      this.setState({
        balance: currentBalance
      });
      $(".deposit").val("");
    } else {
      alert("PLEASE PUT A VALID NUMBER");
      $(".deposit").val("");
    }

    $.ajax({
      method: "POST",
      url: "/balance",
      cache: false,
      context: this,
      data: { balance: currentBalance }
    })
      .done(function(response) {
        this.setState({
          balance: this.state.balance
        });
      });
  },

  withdraw: function(e) {
    e.preventDefault();
    var withdraw = $(".withdraw").val();
    var currentBalance = this.state.balance - parseInt(withdraw);
    if (Number.isInteger(parseInt(withdraw))) {
      if (currentBalance < 0) {
        alert("THERE IS NOT ENOUGH MONEY IN YOUR ACCOUNT");
      } else{
        this.setState({
          balance: currentBalance
        });
      }
      $(".withdraw").val("");
    } else {
        alert("PLEASE PUT A VALID NUMBER");
        $(".withdraw").val("");
    }

    $.ajax({
      method: "POST",
      url: "/balance",
      cache: false,
      context: this,
      data: { balance: currentBalance }
    })
      .done(function(response) {
        this.setState({
          balance: this.state.balance
        });
      });
  },

// for using ajax!!!!
  componentDidMount: function() {
    $.ajax({
      url: "/balance",
      cache: false,
      context: this
    })
      .done(function(response) {
        this.setState({
          balance: parseInt(response.balance)
        });
      });
  },

  render: function() {
    return (
      <div className="container">
        <h1> Welcome to ATM Machine </h1>
        <h3> Balance: ${this.state.balance} </h3>
        <form onSubmit = {this.deposit}>
          <label htmlFor="deposit">Deposit</label>
          $<input className="deposit" name="deposit"/>
          <button>Deposit</button>
        </form>
        <form onSubmit = {this.withdraw}>
          <label htmlFor="withdraw">Withdraw</label>
          $<input className="withdraw" name="withdraw"/>
          <button>Withdraw</button>
        </form>
      </div>
    );
  }
});
