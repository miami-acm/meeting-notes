// Import React
import React from 'react';

// Import Spectacle Core tags
import {
  BlockQuote,
  Cite,
  Deck,
  Heading,
  ListItem,
  List,
  Quote,
  Slide,
  Text
} from 'spectacle';

// Import theme
import createTheme from 'spectacle/lib/themes/default';

// Require CSS
require('normalize.css');

const theme = createTheme({
  primary: 'white',
  secondary: '#1F2022',
  tertiary: '#03A9FC',
  quarternary: '#CECECE'
}, {
  primary: 'Montserrat',
  secondary: 'Helvetica'
});

export default class Presentation extends React.Component {
  render() {
    return (
      <Deck transition={['fade']} transitionDuration={500} theme={theme}>
        <Slide bgColor='primary'>
          <Heading size={1} fit caps lineHeight={1} textColor='secondary'>
            Welcome to ACM!
          </Heading>
          <Text margin='10px 0 0' textColor='tertiary' size={1} fit bold>
            Today's Topic: React & Material Design
          </Text>
        </Slide>
        <Slide bgColor='secondary'>
          <Heading size={1}>React</Heading>
        </Slide>
        <Slide bgColor='tertiary' textColor='primary'>
          <Heading size={1}>Material Design via React</Heading>
        </Slide>
        <Slide bgColor='primary'>
          <Heading>Announcements</Heading>
          <List>
            <ListItem>Next Meeting: 3/14 @ 7PM</ListItem>
            <ListItem>Next Board Meeting: 3/14 @ 6PM</ListItem>
          </List>
        </Slide>
      </Deck>
    );
  }
}
