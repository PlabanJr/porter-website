import "@/styles/globals.css";
import { Titillium_Web } from "next/font/google";

const titilliumWeb = Titillium_Web({
  weight: ["400", "600", "700"],
  subsets: ["latin"],
});

export default function App({ Component, pageProps }) {
  return (
    <main className={titilliumWeb.className}>
      <Component {...pageProps} />
    </main>
  );
}
