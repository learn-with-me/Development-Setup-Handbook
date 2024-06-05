# Static Site Generator

## Deployment

- Netlify
- Vercel
- Cloudflare
- [fly.io](https://fly.io/)

## Top comments from blogs

### Cloudflare

Cloudflare is a lot more generous with bandwidth. It's basically unmetered.
Cloudflare Pages also provide preview deployments and you can handle server-side logic and SSR with Cloudflare Workers.

Cloudflare provides most what Vercel does through Pages and Workers, and additionally they also provide storage (KV database, object storage and blob storage), email routing and other services – as long as you're ok to be locked in with their services.

If you are looking for a platform that offers unlimited builds and deploys of static websites and serverless functions, Cloudflare Pages may be the better option

### Vercel

Vercel's free plan is limited to 100gb or so, and gets really expensive if you are using more than 1tb a month. Bandwidth is basically data transfer. vercel (and most other web hosts) will meter how much data your site is using and charge you for it

Vercel does have the best support nextjs's SSR features, compared to cloudflare which only supports ssr on nextjs version 12.

Vercel has a convenient feature where it will auto-deploy your feature branches and post a preview link on github, so it's great if you are working on a team and you want to QA other peoples work before merging.

Vercel is a great choice for Next.js, but their server-side hosting is limited to "serverless" functions. They also don't provide much extra services outside of core hosting, for example you'll have to pick some other hosting for a database or files storage.

Vercel isn’t allowing commercial use while Cloudflare does, with the free plan.

### Fly.io

Fly is the closest one to Heroku, it lets you run a “traditional” stateful server (e.g. Express) and a database in a free tier, so it's nice choice if you want to use for example MERN stack.

## References

- Generators
    - [docsify](https://github.com/docsifyjs/docsify)
- Deployment services
    - [Cloudflare vs Vercel vs FLY io, where to deploy?](https://www.reddit.com/r/react/comments/10gc644/cloudflare_vs_vercel_vs_fly_io_where_to_deploy/) | Stackoverflow
