SET
@Entry = 190010,
@Name = "Warpweber Titan";
DELETE FROM `creature_template` WHERE `entry` = 190010;

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `GossipMenuId`, `minlevel`, `maxlevel`, `Expansion`, `faction`, `NpcFlags`, `scale`, `rank`, `DamageSchool`, `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `unitClass`, `unitFlags`, `CreatureType`, `CreatureTypeFlags`, `lootid`, `PickpocketLootId`, `SkinningLootId`, `AIName`, `MovementType`, `RacialLeader`, `RegenerateStats`, `MechanicImmuneMask`, `ExtraFlags`, `ScriptName`) VALUES
(@Entry, 19646, 0, @Name, "Transmogrifizierer", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 0, 1, 0, 0, 'npc_transmogrifier');

SET @TEXT_ID := 601083;
DELETE FROM `npc_text` WHERE `ID` BETWEEN @TEXT_ID AND @TEXT_ID+5;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrifikation erlaubt es euch, das Aussehen eurer Gegenstände zu verändern.\r\nTransmogrifizierte Gegenstände werden an euch gebunden und können nicht länger gehandelt werden.\r\n\r\nNicht alle Gegenstände können miteinander transmogrifiziert werden.\r\nEinschränkungen beinhalten unter anderem:\r\nNur Rüstung und Waffen können transmogrifiziert werden.\r\nSchießeisen, Bögen and Armbrüste können miteinander transmogrifiziert werden.\r\nAngeruten können nicht transmogrifiziert werden.\r\nBeide Gegenstände müssen anlegbar sein.\r\n\r\nTransmogrifikationen bestehen solange sich der Gegenstand in eurem Besitz befindet.\r\n\r\nTransmogrifikationen können jederzeit kostenfrei beim Transmogrifikator eurer Wahl wieder entfernt werden.'),
(@TEXT_ID+1, 'Ihr könnt eure eigenen Transmogrifikations-Sets speichern.\r\n\r\nZum Speichern müssen zuerst die angelegten Gegenstände transmogrifiziert werden.\r\nThen when you go to the set management menu and go to save set menu,\r\nall items you have transmogrified are displayed so you see what you are saving.\r\nIf you think the set is fine, you can click to save the set and name it as you wish.\r\n\r\nTo use a set you can click the saved set in the set management menu and then select use set.\r\nIf the set has a transmogrification for an item that is already transmogrified, the old transmogrification is lost.\r\nNote that same transmogrification restrictions apply when trying to use a set as in normal transmogrification.\r\n\r\nTo delete a set you can go to the set\'s menu and select delete set.'),
(@TEXT_ID+2, 'Wählt das gewünschte Aussehen für diesen Gegenstand.'),
(@TEXT_ID+3, 'Überprüft den Preis und bestätigt die Transmogrifikation.'),
(@TEXT_ID+4, 'Dieser Gegenstand wurde bereits transmogrifiziert.\r\nKlickt Entfernen, um das originale Aussehen wiederherzustellen!'),
(@TEXT_ID+5, 'Dieser Gegenstand wurde bereits transmogrifiziert.\r\nKlickt Entfernen, um das originale Aussehen wiederherzustellen oder wählt einen anderen Gegenstand!');

SET @STRING_ENTRY := 11100;
DELETE FROM `mangos_string` WHERE `entry` BETWEEN  @STRING_ENTRY+0 AND @STRING_ENTRY+29;
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES
(@STRING_ENTRY+0, 'Item erfolgreich transmogrifiziert.'),
(@STRING_ENTRY+1, 'Equipment slot ist leer.'),
(@STRING_ENTRY+2, 'Ungültiger Quellgegenstand ausgewählt.'),
(@STRING_ENTRY+3, 'Quellgegenstand existiert nicht.'),
(@STRING_ENTRY+4, 'Zielgegenstand existiert nicht.'),
(@STRING_ENTRY+5, 'Ausgewählte Gegenstände sind ungültig.'),
(@STRING_ENTRY+6, 'Ihr habt nicht genug Gold.'),
(@STRING_ENTRY+7, 'Ihr habt nicht genug Token.'),
(@STRING_ENTRY+8, 'Zielgegenstand hat bereits diese Transmogrifikation.'),
(@STRING_ENTRY+9, 'Alle eure Transmogrifikationen wurden entfernt.'),
(@STRING_ENTRY+10, 'Gegenstandstransmogrifikationen wurden entfernt.'),
(@STRING_ENTRY+11, 'Keine Transmogrifikation gefunden.'),
(@STRING_ENTRY+12, 'Keine Transmogrifikation auf diesem Gegenstand gefunden.'),
(@STRING_ENTRY+13, 'Ungültiger Name eingegeben.'),
(@STRING_ENTRY+14, 'Transmogrifizierte Gegenstände werden angezeigt.'),
(@STRING_ENTRY+15, 'Transmogrifizierte Gegenstände werden versteckt.'),
(@STRING_ENTRY+16, 'Der ausgewählte Gegenstand kann nicht transmogrifiziert werden.'),
(@STRING_ENTRY+17, 'Der ausgewählte Gegenstand kann für den Zielspieler nicht transmogrifiziert werden.'),
(@STRING_ENTRY+18, 'Ihr habt keine transmogrifizierbaren Gegenstände in eurem Inventar.'),
(@STRING_ENTRY+19, 'Entfernen: '),
(@STRING_ENTRY+20, '< [Zurück]'),
(@STRING_ENTRY+21, '< [Hauptmenü]'),
(@STRING_ENTRY+22, 'Vorher: '), 
(@STRING_ENTRY+23, 'Nachher:'),
(@STRING_ENTRY+24, 'Preis: '),
(@STRING_ENTRY+25, 'Bestätigen'),
(@STRING_ENTRY+26, 'Euer Gegenstand: '),
(@STRING_ENTRY+27, 'Transmog: '),
(@STRING_ENTRY+28, 'Mögliche Transmogrifikationen:'),
(@STRING_ENTRY+29, 'Optionen:');

DELETE FROM `command` WHERE `name` IN ('transmog', 'transmog add', 'transmog add set');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('transmog', 0, 'Syntax: .transmog <on/off>\nAllows seeing transmogrified items and the transmogrifier NPC.'),
('transmog add', 1, 'Syntax: .transmog add $player $item\nAdds an item to a player\'s appearance collection.'),
('transmog add set', 1, 'Syntax: .transmog add set $player $itemSet\nAdds items of an ItemSet to a player\'s appearance collection.');