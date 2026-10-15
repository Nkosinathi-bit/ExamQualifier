FROM mcr.microsoft.com/dotnet/sdk:10.0 AS build
WORKDIR /src

COPY ExamQualifier.csproj ./
RUN dotnet restore ExamQualifier.csproj

COPY . .
RUN dotnet publish ExamQualifier.csproj -c Release -o /app/publish --no-restore /p:UseAppHost=false

FROM mcr.microsoft.com/dotnet/runtime:10.0 AS final
WORKDIR /app
COPY --from=build /app/publish .
ENTRYPOINT ["dotnet", "ExamQualifier.dll"]
