FROM microsoft/aspnet:1.0.0-rc1-update1-coreclr

COPY project.json /app/
WORKDIR /app
RUN ["dnu", "restore"]
COPY . /app
RUN ["dnu", "commands", "install", "Microsoft.Dnx.Watcher"]
EXPOSE 5004
CMD /root/.dnx/bin/dnx-watch web
