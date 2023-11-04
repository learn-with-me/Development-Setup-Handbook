# uvicorn

An asynchronous web server. Comes with a file-change watcher.

## Usage

```shell
# To start uvicorn via command line, if not starting via main file
$ uvicorn hello:app --reload

# To start uvicorn via main file, add the following code
if __name__ == "__main__":
    import uvicorn
    uvicorn.run("server:app", reload=True)
```
