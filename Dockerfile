FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build-env

# Copy everything
COPY . ./
WORKDIR ConversaoPeso.Web
# Restore as distinct layers
RUN dotnet restore
# Build and publish a release
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /ConversaoPeso.Web
COPY --from=build-env /ConversaoPeso.Web/out .
EXPOSE 80
ENTRYPOINT ["dotnet", "ConversaoPeso.Web.dll"]