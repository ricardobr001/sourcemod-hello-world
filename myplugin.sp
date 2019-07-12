#include <sourcemod>
#include <sdktools>

#define PLUGIN_VERSION "1.0.0"

public Plugin myinfo = {
    name = "First CSGO plugin",
    author = "Ricardo Mendes",
    description = "Plugin hello world",
    version = PLUGIN_VERSION
};

public void OnClientConnected(int client) {
    PrintToChatAll("Welcome to the server, miley hello world!");
}