#include <sourcemod>
#include <sdktools>
#include <sdkhooks>
#include "include/events"

#define PLUGIN_VERSION "1.0.0"

public Plugin myinfo = {
    name = "First CSGO plugin",
    author = "Ricardo Mendes",
    description = "Plugin hello world",
    version = PLUGIN_VERSION
};

public void OnPluginStart() {
    HookEvent("player_death",  onPlayerDeath);
}

public void OnClientConnected(int client) {
    PrintToChatAll("Welcome to the server, miley hello world!");
}

public Action onPlayerDeath(Event event, const char[]name, bool dontBroadcast) {
    char weapon[64];
    int victimId = event.GetInt("userid");
    int attackerId = event.GetInt("attacker");
    event.GetString("weapon", weapon, sizeof(weapon));
    
    char attackerName[64];
	int attacker = GetClientOfUserId(attackerId);
	GetClientName(attacker, attackerName, sizeof(attackerName));
    
    char victimName[64];
	int victim = GetClientOfUserId(victimId);
	GetClientName(victim, victimName, sizeof(victimName));
    
    PrintToChatAll("%s killed %s using %s!", attackerName, victimName, weapon);
    
    return Plugin_Continue;
}