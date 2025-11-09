import type { Config } from "tailwindcss";

export default {
  darkMode: "class",
  content: [
    "./index.html",
    "./src/**/*.{js,ts,jsx,tsx}",
    "./screens/**/*.{js,ts,jsx,tsx}",
    "./components/**/*.{js,ts,jsx,tsx}",
  ],
  theme: {
    extend: {
      colors: {
        'brand-primary': 'hsl(0, 91%, 60%)',
        'brand-secondary': 'hsl(330, 81%, 60%)',
        'brand-light': 'hsl(330, 82%, 81%)',
        'neutral-900': 'hsl(220, 26%, 14%)',
        'neutral-800': 'hsl(217, 19%, 27%)',
        'neutral-700': 'hsl(217, 19%, 35%)',
        'neutral-600': 'hsl(215, 14%, 34%)',
        'neutral-300': 'hsl(218, 18%, 76%)',
        'neutral-100': 'hsl(220, 14%, 96%)',
        'accent-gold': 'hsl(43, 96%, 56%)',
        'accent-green': 'hsl(158, 77%, 39%)',
        'accent-red': 'hsl(0, 91%, 60%)',
      },
      borderRadius: {
        lg: "var(--radius)",
        md: "calc(var(--radius) - 2px)",
        sm: "calc(var(--radius) - 4px)",
      },
    },
  },
  plugins: [require("tailwindcss-animate")],
} satisfies Config;
