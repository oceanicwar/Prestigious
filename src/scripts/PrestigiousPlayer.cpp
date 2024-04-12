#include "PrestigiousPlayer.h"
#include "PrestigeHandler.h"

void PrestigiousPlayerScript::OnLevelChanged(Player* player, uint8 /*oldLevel*/)
{
    if (!player)
    {
        return;
    }

    if (player->GetLevel() < sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL))
    {
        return;
    }

    if (player->HasFlag(PLAYER_FLAGS, sPrestigeHandler->PLAYER_FLAGS_SACRIFICED))
    {
        player->RemoveFlag(PLAYER_FLAGS, sPrestigeHandler->PLAYER_FLAGS_SACRIFICED);
        sPrestigeHandler->RewardPlayer(player, 200);
    }

    sPrestigeHandler->UnflagItems(player);
}

bool PrestigiousPlayerScript::CanEquipItem(Player* player, uint8 /*slot*/, uint16& /*dest*/, Item* pItem, bool /*swap*/, bool /*not_loading*/)
{
    if (!player || !pItem)
    {
        return true;
    }

    if (pItem->HasFlag(ITEM_FIELD_FLAGS, sPrestigeHandler->ITEM_FIELD_FLAG_PRESTIGE_LOCK) &&
        player->GetLevel() < sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL))
    {
        player->SendSystemMessage("You cannot equip this item since you acquired it from a previous playthrough. Reach max level to unlock the item.");
        return false;
    }

    return true;
}
