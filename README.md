This is a [Next.js](https://nextjs.org) project bootstrapped with [`create-next-app`](https://nextjs.org/docs/app/api-reference/cli/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
```

## Run in Docker

Build image:
```bash
docker build . -t next
```

Run container
```bash
docker run -p 3000:3000 next
```