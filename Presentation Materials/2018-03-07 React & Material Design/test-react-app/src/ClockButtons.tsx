import * as React from 'react';
import './App.css';

interface Props {

}
interface State {
  isPressed: boolean;
}

class ClockButtons extends React.Component<Props, State> {
  constructor(props: Props) {
    super(props);

    this.state = {
      isPressed: false,
    };
  }

  render() {
    return (
      <button
        onClick={() => this.setState(prevState => ({
          isPressed: !prevState.isPressed,
        }))}
      >
        {this.state.isPressed ? 'pressed' : 'not pressed'}
      </button>
    );
  }
}

export default ClockButtons;
