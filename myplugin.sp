#include <sourcemod>
#include <sdktools>
#include <clients>
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
    
    gainLife(attacker, weapon);

    PrintToChatAll("%s killed %s using %s!", attackerName, victimName, weapon);
    
    return Plugin_Continue;
}

public void gainLife(int playerId, char[] weapon) {
    new playerHP = GetClientHealth(playerId);
    new newHP = playerHP + 25;
    
    if (StrEqual(weapon, "ak47")) {
        if (playerHP + 25 > 100) {
            SetEntProp(playerId, Prop_Send, "m_iHealth", 100, 1);    
        } else {
            SetEntProp(playerId, Prop_Send, "m_iHealth", newHP, 1);
        }
    }
}