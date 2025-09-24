import React from 'react';
import { UseTheme } from './ThemeContext';

function App() {
  const { theme, toggleTheme } = UseTheme();

  const styles = {
    backgroundColor: theme === 'light' ? '#fff' : '#222',
    color: theme === 'light' ? '#000' : '#fff',
      
 

  };

  return (
    <div style={styles}>
      <h1>Hello guyss....wiggle wiggle... </h1>
      <button onClick={toggleTheme}>
        Toggle Theme
      </button>
    </div>
  );
}

export default App;