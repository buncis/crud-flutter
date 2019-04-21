import 'package:uuid/uuid.dart';

class Post {
  final String id;
  final String title;
  final String content;

  const Post({
    this.id,
    this.title,
    this.content,
  });
}

final uuid = new Uuid();

final posts = [
  new Post(
      content:
          "Circular Shock Acoustic Waves in Ionosphere Triggered by Launch of Formosat‐5",
      title: "wiley.com",
      id: uuid.v4()),
  new Post(
    id: uuid.v4(),
    content: "BMW says electric car mass production not viable until 2020",
    title: "reuters.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Evolution Is the New Deep Learning",
    title: "sentient.ai",
  ),
  new Post(
    id: uuid.v4(),
    content: "TCP Tracepoints have arrived in Linux",
    title: "brendangregg.com",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Section 230: A Key Legal Shield for Facebook, Google Is About to Change",
    title: "npr.org",
  ),
  new Post(
    id: uuid.v4(),
    content: "A Visiting Star Jostled Our Solar System 70,000 Years Ago",
    title: "gizmodo.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Cow Game Extracted Facebook Data",
    title: "theatlantic.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Ask HN: How do you find freelance work?",
    title: "ask HN",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Hedge-fund managers that do the most research will post the best returns",
    title: "cnbc.com",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Number systems of the world, sorted by complexity of counting (2006)",
    title: "airnet.ne.jp",
  ),
  new Post(
    id: uuid.v4(),
    content: "MIT’s new device can pull water from desert air",
    title: "techcrunch.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "GitLab 10.6 released with CI/CD for GitHub",
    title: "gitlab.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Next-Gen Display: MicroLEDs",
    title: "ieee.org",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Power 9 May Dent X86 Servers: Alibaba, Google, Tencent Test IBM Systems",
    title: "eetimes.com",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Show HN: Transfer files to mobile device by scanning a QR code from the terminal",
    title: "github.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Types of People Startups Should Hire, but Don’t",
    title: "trifinlabs.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Steinhaus Longimeter",
    title: "fairfield.edu",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Data on 1.2M Facebook users from 2005 (2011) [use archive.org url in thread]",
    title: "michaelzimmer.org",
  ),
  new Post(
    id: uuid.v4(),
    content: "The Myth of Authenticity Is Killing Tex-Mex",
    title: "eater.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Show HN: Asynchronous HTTP/2 client for Python 2.7",
    title: "github.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Fractions in the Farey Sequences and the Stern-Brocot Tree",
    title: "surrey.ac.uk",
  ),
  new Post(
    id: uuid.v4(),
    content: "Understanding CPU port contention",
    title: "dendibakh.github.io",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "Krita 4.0 – A painting app for cartoonists, illustrators, and concept artists",
    title: "krita.org",
  ),
  new Post(
    id: uuid.v4(),
    content: "Cutting ‘Old Heads’ at IBM",
    title: "propublica.org",
  ),
  new Post(
    id: uuid.v4(),
    content: "Where to Score: Classified Ads from Haight-Ashbury",
    title: "theparisreview.org",
  ),
  new Post(
    id: uuid.v4(),
    content:
        "TravisBuddy: Adds comments to failed pull requests, tells author what went wrong",
    title: "github.com",
  ),
  new Post(
    id: uuid.v4(),
    content: "Using Technical Debt in Your Favor",
    title: "gitconnected.com",
  )
];
