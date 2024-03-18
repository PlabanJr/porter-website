import { Footer, Header } from "@porter/core/src";
import {
  Head,
  Html,
  Main,
  NextScript,
} from "next/document";
import Image from "next/image";
import Link from "next/link";

export default function Document() {
  return (
    <Html lang="en">
      <Head />
      <body>
        <Header
          logo={
            <Link href={"/"}>
              <Image
                src="porter-logo-blue.svg"
                alt="jj"
                width={92}
                height={18}
                className="cursor-pointer"
              />
            </Link>
          }
          navItems={[
            { label: "Enterprise", redirectTo: "" },
            { label: "Deliver Partners", redirectTo: "" },
          ]}
          rightNavItems={[
            { label: "Support", redirectTo: "" },
          ]}
        />
        <Main />
        <Footer
          logo={
            <Link href={"/"}>
              <Image
                src="porter-logo-white.svg"
                alt="jj"
                width={154}
                height={25}
                className="cursor-pointer"
              />
            </Link>
          }
        />
        <NextScript />
      </body>
    </Html>
  );
}
