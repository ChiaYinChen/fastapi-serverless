# FastAPI with Serverless

This project is a simple example of using FastAPI with a Serverless architecture. It is designed for learning and practice.

## Prerequisites

Make sure you have the following installed on your system:

- [Node.js](https://nodejs.org/) (required for npm)
- [uv](https://docs.astral.sh/uv/) to run Python and manage packages

## Development

### Setup

If this is your first time running the project, initialize and set up dependencies:

```
$ make init-up
```

### Running FastAPI Locally

Start the FastAPI server in development mode:

```
$ make serve-fastapi env=dev
```

### Running Serverless Offline

Run the Serverless setup locally:

```
$ make serve-offline  env=dev
```

### Linting and Formatting

Use `ruff` to check code style and fix formatting:

```
$ make lint-format
```
