# Dice Rolling App

This is a Sinatra web application that allows users to simulate rolling various types of dice commonly used in tabletop roleplaying games such as Dice Throne.

## Features

- Roll any combination of dice with different numbers of sides.
- Supports rolling multiple dice at once.
- For easy navigation, provides links on the homepage to different dice rolls.

## Usage

1. Clone this repository to your local machine.
2. Install the required gems by running `bundle install`.
3. Start the Sinatra server by running `ruby dice.rb`.
4. In your web browser, navigate to `http://localhost:4567/`to access the homepage.
5. Click on the provided links to roll different types of dice.

## Supported Dice Rolls

The following types of dice rolls are supported:

- Roll 2 ten-sided dice: `/dice/2/10`
- Roll 1 twenty-sided die: `/dice/1/20`
- Roll 5 four-sided dice: `/dice/5/4`
- Roll 1 four-sided die: `/dice/1/4`
- Roll 1 six-sided die: `/dice/1/6`
- Roll 1 eight-sided die: `/dice/1/8`
- Roll 1 twelve-sided die: `/dice/1/12`

Additional combinations can be easily added by following the same pattern.

## Styling

The homepage is styled with a fixed width and height, along with shadows on the right and bottom edges to give it a card-like appearance. Content is centered both horizontally and vertically for better presentation.

## Dependencies

- Sinatra
- Puma
- Sinatra-contrib
