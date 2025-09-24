import React from 'react';
import { UseTheme } from './ThemeContext';

function App() {
  const { theme, toggleTheme } = UseTheme();

  const styles = {
    backgroundColor: theme === 'light' ? '#fff' : '#222',
    color: theme === 'light' ? '#000' : '#fff',
    minHeight: '100vh',
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center',
    justifyContent: 'center',
    transition: 'all 0.3s',
  };

  return (
    <div style={styles}>
      <h1>Hello Students!</h1>
      <button onClick={toggleTheme}>
        Toggle Theme
      </button>
    </div>
  );
}

export default App;