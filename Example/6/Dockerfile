FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /opt/app
EXPOSE 80

FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /opt
COPY . .
WORKDIR  /opt/sourcecode/
RUN dotnet build Project.csproj

FROM build AS publish
RUN dotnet publish Project.csproj -c Release -o /opt/app

FROM base AS final
WORKDIR /opt/app
COPY --from=publish /opt/app .
ENTRYPOINT ["dotnet", "Project.dll"]
