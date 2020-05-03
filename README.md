# GitRunner
Docker images for building and running front-end projects from GitHub

## Usage

First, build the base Alpine Linux image:

```sh
cd /images/apline-git
docker build . -t alpine-git
```

Then, build the target platform image, for instance:

```sh
cd /images/alpine-git-node-yarn
docker build . -t alpine-git-node-yarn
```

Finally execute your **command** pointing to the target GitHub **repository**:

```sh
docker run -d \
 -e GIT_REPO_URL="https://github.com/gothinkster/react-redux-realworld-example-app" \
 -e COMMAND="npm install && npm start" \
 -p 4100:4100 \
 --name sandbox alpine-git-node-yarn
```

And attach to the command screen within the container to see the terminal output:

```sh
docker exec -it <CONTAINER_ID> sh
# screen -r
```

![image](https://i.imgur.com/MvEk5Vk.png)

In order to leave the secondary screen back to the container primary shell, type `CTRL + A + D`.

## Licensing

This code is released under the MIT License:

Copyright (c) TCGV.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
