unit CharacterDataUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, ValEdit;

type
  TCharacterDataForm = class(TForm)
    Panel1: TPanel;
    btOK: TButton;
    btCancel: TButton;
    vleMain: TValueListEditor;
  private
    { Private declarations }
    function ReadData: string;
    procedure SetData(const Value: string);
    procedure SetKeys;
  public
    { Public declarations }
    property Data: string read ReadData write SetData;
  end;

implementation

{$R *.dfm}

{ TCharacterDataForm }

function TCharacterDataForm.ReadData: string;
var
  i : integer;
begin
  Result := '';
  for i := 1 to vleMain.RowCount - 1 do
    Result := Result + vleMain.Cells[1,i] + ' ';
end;

procedure TCharacterDataForm.SetData(const Value: string);
begin
  ExtractStrings([' '], [], PWideChar(Value), vleMain.Strings);
  SetKeys;
end;

procedure TCharacterDataForm.SetKeys;
begin
  SetCursor(LoadCursor(0,IDC_WAIT));
  vleMain.Keys[$0000+1] := 'UNIT_FIELD_GUID';
  vleMain.Keys[$0006+1] := 'UNIT_FIELD_CHARM';
  vleMain.Keys[$0008+1] := 'UNIT_FIELD_SUMMON';
  vleMain.Keys[$000A+1] := 'UNIT_FIELD_CHARMEDBY';
  vleMain.Keys[$000C+1] := 'UNIT_FIELD_SUMMONEDBY';
  vleMain.Keys[$000E+1] := 'UNIT_FIELD_CREATEDBY';
  vleMain.Keys[$0010+1] := 'UNIT_FIELD_TARGET';
  vleMain.Keys[$0012+1] := 'UNIT_FIELD_PERSUADED';
  vleMain.Keys[$0014+1] := 'UNIT_FIELD_CHANNEL_OBJECT';
  vleMain.Keys[$0016+1] := 'UNIT_FIELD_HEALTH';
  vleMain.Keys[$0017+1] := 'UNIT_FIELD_POWER1';
  vleMain.Keys[$0018+1] := 'UNIT_FIELD_POWER2';
  vleMain.Keys[$0019+1] := 'UNIT_FIELD_POWER3';
  vleMain.Keys[$001A+1] := 'UNIT_FIELD_POWER4';
  vleMain.Keys[$001B+1] := 'UNIT_FIELD_POWER5';
  vleMain.Keys[$001C+1] := 'UNIT_FIELD_MAXHEALTH';
  vleMain.Keys[$001D+1] := 'UNIT_FIELD_MAXPOWER1';
  vleMain.Keys[$001E+1] := 'UNIT_FIELD_MAXPOWER2';
  vleMain.Keys[$001F+1] := 'UNIT_FIELD_MAXPOWER3';
  vleMain.Keys[$0020+1] := 'UNIT_FIELD_MAXPOWER4';
  vleMain.Keys[$0021+1] := 'UNIT_FIELD_MAXPOWER5';
  vleMain.Keys[$0022+1] := 'UNIT_FIELD_LEVEL';
  vleMain.Keys[$0023+1] := 'UNIT_FIELD_FACTIONTEMPLATE';
  vleMain.Keys[$0024+1] := 'UNIT_FIELD_BYTES_0';
  vleMain.Keys[$0025+1] := 'UNIT_VIRTUAL_ITEM_SLOT_DISPLAY';
  vleMain.Keys[$0028+1] := 'UNIT_VIRTUAL_ITEM_INFO';
  vleMain.Keys[$002E+1] := 'UNIT_FIELD_FLAGS';
  vleMain.Keys[$002F+1] := 'UNIT_FIELD_FLAGS_2';
  vleMain.Keys[$0030+1] := 'UNIT_FIELD_AURA';
  vleMain.Keys[$0068+1] := 'UNIT_FIELD_AURAFLAGS';
  vleMain.Keys[$006F+1] := 'UNIT_FIELD_AURALEVELS';
  vleMain.Keys[$007D+1] := 'UNIT_FIELD_AURAAPPLICATIONS';
  vleMain.Keys[$008B+1] := 'UNIT_FIELD_AURASTATE';
  vleMain.Keys[$008C+1] := 'UNIT_FIELD_BASEATTACKTIME';
  vleMain.Keys[$008D+1] := 'UNIT_FIELD_OFFHANDATTACKTIME';
  vleMain.Keys[$008E+1] := 'UNIT_FIELD_RANGEDATTACKTIME';
  vleMain.Keys[$008F+1] := 'UNIT_FIELD_BOUNDINGRADIUS';
  vleMain.Keys[$0090+1] := 'UNIT_FIELD_COMBATREACH';
  vleMain.Keys[$0091+1] := 'UNIT_FIELD_DISPLAYID';
  vleMain.Keys[$0092+1] := 'UNIT_FIELD_NATIVEDISPLAYID';
  vleMain.Keys[$0093+1] := 'UNIT_FIELD_MOUNTDISPLAYID';
  vleMain.Keys[$0094+1] := 'UNIT_FIELD_MINDAMAGE';
  vleMain.Keys[$0095+1] := 'UNIT_FIELD_MAXDAMAGE';
  vleMain.Keys[$0096+1] := 'UNIT_FIELD_MINOFFHANDDAMAGE';
  vleMain.Keys[$0097+1] := 'UNIT_FIELD_MAXOFFHANDDAMAGE';
  vleMain.Keys[$0098+1] := 'UNIT_FIELD_BYTES_1';
  vleMain.Keys[$0099+1] := 'UNIT_FIELD_PETNUMBER';
  vleMain.Keys[$009A+1] := 'UNIT_FIELD_PET_NAME_TIMESTAMP';
  vleMain.Keys[$009B+1] := 'UNIT_FIELD_PETEXPERIENCE';
  vleMain.Keys[$009C+1] := 'UNIT_FIELD_PETNEXTLEVELEXP';
  vleMain.Keys[$009D+1] := 'UNIT_DYNAMIC_FLAGS';
  vleMain.Keys[$009E+1] := 'UNIT_CHANNEL_SPELL';
  vleMain.Keys[$009F+1] := 'UNIT_MOD_CAST_SPEED';
  vleMain.Keys[$00A0+1] := 'UNIT_CREATED_BY_SPELL';
  vleMain.Keys[$00A1+1] := 'UNIT_NPC_FLAGS';
  vleMain.Keys[$00A2+1] := 'UNIT_NPC_EMOTESTATE';
  vleMain.Keys[$00A3+1] := 'UNIT_TRAINING_POINTS';
  vleMain.Keys[$00A4+1] := 'UNIT_FIELD_STAT0';
  vleMain.Keys[$00A5+1] := 'UNIT_FIELD_STAT1';
  vleMain.Keys[$00A6+1] := 'UNIT_FIELD_STAT2';
  vleMain.Keys[$00A7+1] := 'UNIT_FIELD_STAT3';
  vleMain.Keys[$00A8+1] := 'UNIT_FIELD_STAT4';
  vleMain.Keys[$00A9+1] := 'UNIT_FIELD_POSSTAT0';
  vleMain.Keys[$00AA+1] := 'UNIT_FIELD_POSSTAT1';
  vleMain.Keys[$00AB+1] := 'UNIT_FIELD_POSSTAT2';
  vleMain.Keys[$00AC+1] := 'UNIT_FIELD_POSSTAT3';
  vleMain.Keys[$00AD+1] := 'UNIT_FIELD_POSSTAT4';
  vleMain.Keys[$00AE+1] := 'UNIT_FIELD_NEGSTAT0';
  vleMain.Keys[$00AF+1] := 'UNIT_FIELD_NEGSTAT1';
  vleMain.Keys[$00B0+1] := 'UNIT_FIELD_NEGSTAT2';
  vleMain.Keys[$00B1+1] := 'UNIT_FIELD_NEGSTAT3';
  vleMain.Keys[$00B2+1] := 'UNIT_FIELD_NEGSTAT4';
  vleMain.Keys[$00B3+1] := 'UNIT_FIELD_RESISTANCES';
  vleMain.Keys[$00BA+1] := 'UNIT_FIELD_RESISTANCEBUFFMODSPOSITIVE';
  vleMain.Keys[$00C1+1] := 'UNIT_FIELD_RESISTANCEBUFFMODSNEGATIVE';
  vleMain.Keys[$00C8+1] := 'UNIT_FIELD_BASE_MANA';
  vleMain.Keys[$00C9+1] := 'UNIT_FIELD_BASE_HEALTH';
  vleMain.Keys[$00CA+1] := 'UNIT_FIELD_BYTES_2';
  vleMain.Keys[$00CB+1] := 'UNIT_FIELD_ATTACK_POWER';
  vleMain.Keys[$00CC+1] := 'UNIT_FIELD_ATTACK_POWER_MODS';
  vleMain.Keys[$00CD+1] := 'UNIT_FIELD_ATTACK_POWER_MULTIPLIER';
  vleMain.Keys[$00CE+1] := 'UNIT_FIELD_RANGED_ATTACK_POWER';
  vleMain.Keys[$00CF+1] := 'UNIT_FIELD_RANGED_ATTACK_POWER_MODS';
  vleMain.Keys[$00D0+1] := 'UNIT_FIELD_RANGED_ATTACK_POWER_MULTIPLIER';
  vleMain.Keys[$00D1+1] := 'UNIT_FIELD_MINRANGEDDAMAGE';
  vleMain.Keys[$00D2+1] := 'UNIT_FIELD_MAXRANGEDDAMAGE';
  vleMain.Keys[$00D3+1] := 'UNIT_FIELD_POWER_COST_MODIFIER';
  vleMain.Keys[$00DA+1] := 'UNIT_FIELD_POWER_COST_MULTIPLIER';
  vleMain.Keys[$00E1+1] := 'UNIT_FIELD_PADDING';
  vleMain.Keys[$00E2+1] := 'UNIT_END';
  vleMain.Keys[$00E2+1] := 'PLAYER_DUEL_ARBITER';
  vleMain.Keys[$00E4+1] := 'PLAYER_FLAGS';
  vleMain.Keys[$00E5+1] := 'PLAYER_GUILDID';
  vleMain.Keys[$00E6+1] := 'PLAYER_GUILDRANK';
  vleMain.Keys[$00E7+1] := 'PLAYER_BYTES';
  vleMain.Keys[$00E8+1] := 'PLAYER_BYTES_2';
  vleMain.Keys[$00E9+1] := 'PLAYER_BYTES_3';
  vleMain.Keys[$00EA+1] := 'PLAYER_DUEL_TEAM';
  vleMain.Keys[$00EB+1] := 'PLAYER_GUILD_TIMESTAMP';
  vleMain.Keys[$00EC+1] := 'PLAYER_QUEST_LOG_1_1';
  vleMain.Keys[$00ED+1] := 'PLAYER_QUEST_LOG_1_2';
  vleMain.Keys[$00EF+1] := 'PLAYER_QUEST_LOG_2_1';
  vleMain.Keys[$00F0+1] := 'PLAYER_QUEST_LOG_2_2';
  vleMain.Keys[$00F2+1] := 'PLAYER_QUEST_LOG_3_1';
  vleMain.Keys[$00F3+1] := 'PLAYER_QUEST_LOG_3_2';
  vleMain.Keys[$00F5+1] := 'PLAYER_QUEST_LOG_4_1';
  vleMain.Keys[$00F6+1] := 'PLAYER_QUEST_LOG_4_2';
  vleMain.Keys[$00F8+1] := 'PLAYER_QUEST_LOG_5_1';
  vleMain.Keys[$00F9+1] := 'PLAYER_QUEST_LOG_5_2';
  vleMain.Keys[$00FB+1] := 'PLAYER_QUEST_LOG_6_1';
  vleMain.Keys[$00FC+1] := 'PLAYER_QUEST_LOG_6_2';
  vleMain.Keys[$00FE+1] := 'PLAYER_QUEST_LOG_7_1';
  vleMain.Keys[$00FF+1] := 'PLAYER_QUEST_LOG_7_2';
  vleMain.Keys[$0101+1] := 'PLAYER_QUEST_LOG_8_1';
  vleMain.Keys[$0102+1] := 'PLAYER_QUEST_LOG_8_2';
  vleMain.Keys[$0104+1] := 'PLAYER_QUEST_LOG_9_1';
  vleMain.Keys[$0105+1] := 'PLAYER_QUEST_LOG_9_2';
  vleMain.Keys[$0107+1] := 'PLAYER_QUEST_LOG_10_1';
  vleMain.Keys[$0108+1] := 'PLAYER_QUEST_LOG_10_2';
  vleMain.Keys[$010A+1] := 'PLAYER_QUEST_LOG_11_1';
  vleMain.Keys[$010B+1] := 'PLAYER_QUEST_LOG_11_2';
  vleMain.Keys[$010D+1] := 'PLAYER_QUEST_LOG_12_1';
  vleMain.Keys[$010E+1] := 'PLAYER_QUEST_LOG_12_2';
  vleMain.Keys[$0110+1] := 'PLAYER_QUEST_LOG_13_1';
  vleMain.Keys[$0111+1] := 'PLAYER_QUEST_LOG_13_2';
  vleMain.Keys[$0113+1] := 'PLAYER_QUEST_LOG_14_1';
  vleMain.Keys[$0114+1] := 'PLAYER_QUEST_LOG_14_2';
  vleMain.Keys[$0116+1] := 'PLAYER_QUEST_LOG_15_1';
  vleMain.Keys[$0117+1] := 'PLAYER_QUEST_LOG_15_2';
  vleMain.Keys[$0119+1] := 'PLAYER_QUEST_LOG_16_1';
  vleMain.Keys[$011A+1] := 'PLAYER_QUEST_LOG_16_2';
  vleMain.Keys[$011C+1] := 'PLAYER_QUEST_LOG_17_1';
  vleMain.Keys[$011D+1] := 'PLAYER_QUEST_LOG_17_2';
  vleMain.Keys[$011F+1] := 'PLAYER_QUEST_LOG_18_1';
  vleMain.Keys[$0120+1] := 'PLAYER_QUEST_LOG_18_2';
  vleMain.Keys[$0122+1] := 'PLAYER_QUEST_LOG_19_1';
  vleMain.Keys[$0123+1] := 'PLAYER_QUEST_LOG_19_2';
  vleMain.Keys[$0125+1] := 'PLAYER_QUEST_LOG_20_1';
  vleMain.Keys[$0126+1] := 'PLAYER_QUEST_LOG_20_2';
  vleMain.Keys[$0128+1] := 'PLAYER_QUEST_LOG_21_1';
  vleMain.Keys[$0129+1] := 'PLAYER_QUEST_LOG_21_2';
  vleMain.Keys[$012B+1] := 'PLAYER_QUEST_LOG_22_1';
  vleMain.Keys[$012C+1] := 'PLAYER_QUEST_LOG_22_2';
  vleMain.Keys[$012E+1] := 'PLAYER_QUEST_LOG_23_1';
  vleMain.Keys[$012F+1] := 'PLAYER_QUEST_LOG_23_2';
  vleMain.Keys[$0131+1] := 'PLAYER_QUEST_LOG_24_1';
  vleMain.Keys[$0132+1] := 'PLAYER_QUEST_LOG_24_2';
  vleMain.Keys[$0134+1] := 'PLAYER_QUEST_LOG_25_1';
  vleMain.Keys[$0135+1] := 'PLAYER_QUEST_LOG_25_2';
  vleMain.Keys[$0137+1] := 'PLAYER_VISIBLE_ITEM_1_CREATOR';
  vleMain.Keys[$0139+1] := 'PLAYER_VISIBLE_ITEM_1_0';
  vleMain.Keys[$0145+1] := 'PLAYER_VISIBLE_ITEM_1_PROPERTIES';
  vleMain.Keys[$0146+1] := 'PLAYER_VISIBLE_ITEM_1_PAD';
  vleMain.Keys[$0147+1] := 'PLAYER_VISIBLE_ITEM_2_CREATOR';
  vleMain.Keys[$0149+1] := 'PLAYER_VISIBLE_ITEM_2_0';
  vleMain.Keys[$0155+1] := 'PLAYER_VISIBLE_ITEM_2_PROPERTIES';
  vleMain.Keys[$0156+1] := 'PLAYER_VISIBLE_ITEM_2_PAD';
  vleMain.Keys[$0157+1] := 'PLAYER_VISIBLE_ITEM_3_CREATOR';
  vleMain.Keys[$0159+1] := 'PLAYER_VISIBLE_ITEM_3_0';
  vleMain.Keys[$0165+1] := 'PLAYER_VISIBLE_ITEM_3_PROPERTIES';
  vleMain.Keys[$0166+1] := 'PLAYER_VISIBLE_ITEM_3_PAD';
  vleMain.Keys[$0167+1] := 'PLAYER_VISIBLE_ITEM_4_CREATOR';
  vleMain.Keys[$0169+1] := 'PLAYER_VISIBLE_ITEM_4_0';
  vleMain.Keys[$0175+1] := 'PLAYER_VISIBLE_ITEM_4_PROPERTIES';
  vleMain.Keys[$0176+1] := 'PLAYER_VISIBLE_ITEM_4_PAD';
  vleMain.Keys[$0177+1] := 'PLAYER_VISIBLE_ITEM_5_CREATOR';
  vleMain.Keys[$0179+1] := 'PLAYER_VISIBLE_ITEM_5_0';
  vleMain.Keys[$0185+1] := 'PLAYER_VISIBLE_ITEM_5_PROPERTIES';
  vleMain.Keys[$0186+1] := 'PLAYER_VISIBLE_ITEM_5_PAD';
  vleMain.Keys[$0187+1] := 'PLAYER_VISIBLE_ITEM_6_CREATOR';
  vleMain.Keys[$0189+1] := 'PLAYER_VISIBLE_ITEM_6_0';
  vleMain.Keys[$0195+1] := 'PLAYER_VISIBLE_ITEM_6_PROPERTIES';
  vleMain.Keys[$0196+1] := 'PLAYER_VISIBLE_ITEM_6_PAD';
  vleMain.Keys[$0197+1] := 'PLAYER_VISIBLE_ITEM_7_CREATOR';
  vleMain.Keys[$0199+1] := 'PLAYER_VISIBLE_ITEM_7_0';
  vleMain.Keys[$01A5+1] := 'PLAYER_VISIBLE_ITEM_7_PROPERTIES';
  vleMain.Keys[$01A6+1] := 'PLAYER_VISIBLE_ITEM_7_PAD';
  vleMain.Keys[$01A7+1] := 'PLAYER_VISIBLE_ITEM_8_CREATOR';
  vleMain.Keys[$01A9+1] := 'PLAYER_VISIBLE_ITEM_8_0';
  vleMain.Keys[$01B5+1] := 'PLAYER_VISIBLE_ITEM_8_PROPERTIES';
  vleMain.Keys[$01B6+1] := 'PLAYER_VISIBLE_ITEM_8_PAD';
  vleMain.Keys[$01B7+1] := 'PLAYER_VISIBLE_ITEM_9_CREATOR';
  vleMain.Keys[$01B9+1] := 'PLAYER_VISIBLE_ITEM_9_0';
  vleMain.Keys[$01C5+1] := 'PLAYER_VISIBLE_ITEM_9_PROPERTIES';
  vleMain.Keys[$01C6+1] := 'PLAYER_VISIBLE_ITEM_9_PAD';
  vleMain.Keys[$01C7+1] := 'PLAYER_VISIBLE_ITEM_10_CREATOR';
  vleMain.Keys[$01C9+1] := 'PLAYER_VISIBLE_ITEM_10_0';
  vleMain.Keys[$01D5+1] := 'PLAYER_VISIBLE_ITEM_10_PROPERTIES';
  vleMain.Keys[$01D6+1] := 'PLAYER_VISIBLE_ITEM_10_PAD';
  vleMain.Keys[$01D7+1] := 'PLAYER_VISIBLE_ITEM_11_CREATOR';
  vleMain.Keys[$01D9+1] := 'PLAYER_VISIBLE_ITEM_11_0';
  vleMain.Keys[$01E5+1] := 'PLAYER_VISIBLE_ITEM_11_PROPERTIES';
  vleMain.Keys[$01E6+1] := 'PLAYER_VISIBLE_ITEM_11_PAD';
  vleMain.Keys[$01E7+1] := 'PLAYER_VISIBLE_ITEM_12_CREATOR';
  vleMain.Keys[$01E9+1] := 'PLAYER_VISIBLE_ITEM_12_0';
  vleMain.Keys[$01F5+1] := 'PLAYER_VISIBLE_ITEM_12_PROPERTIES';
  vleMain.Keys[$01F6+1] := 'PLAYER_VISIBLE_ITEM_12_PAD';
  vleMain.Keys[$01F7+1] := 'PLAYER_VISIBLE_ITEM_13_CREATOR';
  vleMain.Keys[$01F9+1] := 'PLAYER_VISIBLE_ITEM_13_0';
  vleMain.Keys[$0205+1] := 'PLAYER_VISIBLE_ITEM_13_PROPERTIES';
  vleMain.Keys[$0206+1] := 'PLAYER_VISIBLE_ITEM_13_PAD';
  vleMain.Keys[$0207+1] := 'PLAYER_VISIBLE_ITEM_14_CREATOR';
  vleMain.Keys[$0209+1] := 'PLAYER_VISIBLE_ITEM_14_0';
  vleMain.Keys[$0215+1] := 'PLAYER_VISIBLE_ITEM_14_PROPERTIES';
  vleMain.Keys[$0216+1] := 'PLAYER_VISIBLE_ITEM_14_PAD';
  vleMain.Keys[$0217+1] := 'PLAYER_VISIBLE_ITEM_15_CREATOR';
  vleMain.Keys[$0219+1] := 'PLAYER_VISIBLE_ITEM_15_0';
  vleMain.Keys[$0225+1] := 'PLAYER_VISIBLE_ITEM_15_PROPERTIES';
  vleMain.Keys[$0226+1] := 'PLAYER_VISIBLE_ITEM_15_PAD';
  vleMain.Keys[$0227+1] := 'PLAYER_VISIBLE_ITEM_16_CREATOR';
  vleMain.Keys[$0229+1] := 'PLAYER_VISIBLE_ITEM_16_0';
  vleMain.Keys[$0235+1] := 'PLAYER_VISIBLE_ITEM_16_PROPERTIES';
  vleMain.Keys[$0236+1] := 'PLAYER_VISIBLE_ITEM_16_PAD';
  vleMain.Keys[$0237+1] := 'PLAYER_VISIBLE_ITEM_17_CREATOR';
  vleMain.Keys[$0239+1] := 'PLAYER_VISIBLE_ITEM_17_0';
  vleMain.Keys[$0245+1] := 'PLAYER_VISIBLE_ITEM_17_PROPERTIES';
  vleMain.Keys[$0246+1] := 'PLAYER_VISIBLE_ITEM_17_PAD';
  vleMain.Keys[$0247+1] := 'PLAYER_VISIBLE_ITEM_18_CREATOR';
  vleMain.Keys[$0249+1] := 'PLAYER_VISIBLE_ITEM_18_0';
  vleMain.Keys[$0255+1] := 'PLAYER_VISIBLE_ITEM_18_PROPERTIES';
  vleMain.Keys[$0256+1] := 'PLAYER_VISIBLE_ITEM_18_PAD';
  vleMain.Keys[$0257+1] := 'PLAYER_VISIBLE_ITEM_19_CREATOR';
  vleMain.Keys[$0259+1] := 'PLAYER_VISIBLE_ITEM_19_0';
  vleMain.Keys[$0265+1] := 'PLAYER_VISIBLE_ITEM_19_PROPERTIES';
  vleMain.Keys[$0266+1] := 'PLAYER_VISIBLE_ITEM_19_PAD';
  vleMain.Keys[$0267+1] := 'PLAYER_CHOSEN_TITLE';
  vleMain.Keys[$0268+1] := 'PLAYER_FIELD_INV_SLOT_HEAD';
  vleMain.Keys[$0296+1] := 'PLAYER_FIELD_PACK_SLOT_1';
  vleMain.Keys[$02B6+1] := 'PLAYER_FIELD_BANK_SLOT_1';
  vleMain.Keys[$02EE+1] := 'PLAYER_FIELD_BANKBAG_SLOT_1';
  vleMain.Keys[$02FC+1] := 'PLAYER_FIELD_VENDORBUYBACK_SLOT_1';
  vleMain.Keys[$0314+1] := 'PLAYER_FIELD_KEYRING_SLOT_1';
  vleMain.Keys[$0354+1] := 'PLAYER_FARSIGHT';
  vleMain.Keys[$0356+1] := 'PLAYER__FIELD_KNOWN_TITLES';
  vleMain.Keys[$0358+1] := 'PLAYER_XP';
  vleMain.Keys[$0359+1] := 'PLAYER_NEXT_LEVEL_XP';
  vleMain.Keys[$035A+1] := 'PLAYER_SKILL_INFO_1_1';
  vleMain.Keys[$04DA+1] := 'PLAYER_CHARACTER_POINTS1';
  vleMain.Keys[$04DB+1] := 'PLAYER_CHARACTER_POINTS2';
  vleMain.Keys[$04DC+1] := 'PLAYER_TRACK_CREATURES';
  vleMain.Keys[$04DD+1] := 'PLAYER_TRACK_RESOURCES';
  vleMain.Keys[$04DE+1] := 'PLAYER_BLOCK_PERCENTAGE';
  vleMain.Keys[$04DF+1] := 'PLAYER_DODGE_PERCENTAGE';
  vleMain.Keys[$04E0+1] := 'PLAYER_PARRY_PERCENTAGE';
  vleMain.Keys[$04E1+1] := 'PLAYER_CRIT_PERCENTAGE';
  vleMain.Keys[$04E2+1] := 'PLAYER_RANGED_CRIT_PERCENTAGE';
  vleMain.Keys[$04E3+1] := 'PLAYER_OFFHAND_CRIT_PERCENTAGE';
  vleMain.Keys[$04E4+1] := 'PLAYER_SPELL_CRIT_PERCENTAGE1';
  vleMain.Keys[$04E5+1] := 'PLAYER_HOLY_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04E6+1] := 'PLAYER_FIRE_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04E7+1] := 'PLAYER_NATURE_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04E8+1] := 'PLAYER_FROST_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04E9+1] := 'PLAYER_SHADOW_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04EA+1] := 'PLAYER_ARCANE_SPELL_CRIT_PERCENTAGE';
  vleMain.Keys[$04EB+1] := 'PLAYER_EXPLORED_ZONES_1';
  vleMain.Keys[$052B+1] := 'PLAYER_REST_STATE_EXPERIENCE';
  vleMain.Keys[$052C+1] := 'PLAYER_FIELD_COINAGE';
  vleMain.Keys[$052D+1] := 'PLAYER_FIELD_MOD_DAMAGE_DONE_POS';
  vleMain.Keys[$0534+1] := 'PLAYER_FIELD_MOD_DAMAGE_DONE_NEG';
  vleMain.Keys[$053B+1] := 'PLAYER_FIELD_MOD_DAMAGE_DONE_PCT';
  vleMain.Keys[$0542+1] := 'PLAYER_FIELD_MOD_HEALING_DONE_POS';
  vleMain.Keys[$0543+1] := 'PLAYER_FIELD_MOD_TARGET_RESISTANCE';
  vleMain.Keys[$0544+1] := 'PLAYER_FIELD_BYTES';
  vleMain.Keys[$0545+1] := 'PLAYER_AMMO_ID';
  vleMain.Keys[$0546+1] := 'PLAYER_SELF_RES_SPELL';
  vleMain.Keys[$0547+1] := 'PLAYER_FIELD_PVP_MEDALS';
  vleMain.Keys[$0548+1] := 'PLAYER_FIELD_BUYBACK_PRICE_1';
  vleMain.Keys[$0554+1] := 'PLAYER_FIELD_BUYBACK_TIMESTAMP_1';
  vleMain.Keys[$0560+1] := 'PLAYER_FIELD_KILLS';
  vleMain.Keys[$0561+1] := 'PLAYER_FIELD_TODAY_CONTRIBUTION';
  vleMain.Keys[$0562+1] := 'PLAYER_FIELD_YESTERDAY_CONTRIBUTION';
  vleMain.Keys[$0563+1] := 'PLAYER_FIELD_LIFETIME_HONORABLE_KILLS';
  vleMain.Keys[$0564+1] := 'PLAYER_FIELD_BYTES2';
  vleMain.Keys[$0565+1] := 'PLAYER_FIELD_WATCHED_FACTION_INDEX';
  vleMain.Keys[$0566+1] := 'PLAYER_FIELD_COMBAT_RATING_1';
  vleMain.Keys[$0566+1] := 'PLAYER_FIELD_ALL_WEAPONS_SKILL_RATING';
  vleMain.Keys[$0566+1+1] := 'PLAYER_FIELD_DEFENCE_RATING';
  vleMain.Keys[$0566+2+1] := 'PLAYER_FIELD_DODGE_RATING';
  vleMain.Keys[$0566+3+1] := 'PLAYER_FIELD_PARRY_RATING';
  vleMain.Keys[$0566+4+1] := 'PLAYER_FIELD_BLOCK_RATING';
  vleMain.Keys[$0566+5+1] := 'PLAYER_FIELD_MELEE_HIT_RATING';
  vleMain.Keys[$0566+6+1] := 'PLAYER_FIELD_RANGED_HIT_RATING';
  vleMain.Keys[$0566+7+1] := 'PLAYER_FIELD_SPELL_HIT_RATING';
  vleMain.Keys[$0566+8+1] := 'PLAYER_FIELD_MELEE_CRIT_RATING';
  vleMain.Keys[$0566+9+1] := 'PLAYER_FIELD_RANGED_CRIT_RATING';
  vleMain.Keys[$0566+10+1] := 'PLAYER_FIELD_SPELL_CRIT_RATING';
  vleMain.Keys[$0566+11+1] := 'PLAYER_FIELD_HIT_RATING';
  vleMain.Keys[$0566+12+1] := 'PLAYER_FIELD_CRIT_RATING';
  vleMain.Keys[$0566+13+1] := 'PLAYER_FIELD_UNK3_RATING';
  vleMain.Keys[$0566+14+1] := 'PLAYER_FIELD_UNK4_RATING';
  vleMain.Keys[$0566+15+1] := 'PLAYER_FIELD_UNK5_RATING';
  vleMain.Keys[$0566+16+1] := 'PLAYER_FIELD_RESILIENCE_RATING';
  vleMain.Keys[$0566+17+1] := 'PLAYER_FIELD_MELEE_HASTE_RATING';
  vleMain.Keys[$0566+19+1] := 'PLAYER_FIELD_RANGED_HASTE_RATING';
  vleMain.Keys[$0566+20+1] := 'PLAYER_FIELD_SPELL_HASTE_RATING';
  vleMain.Keys[$0566+21+1] := 'PLAYER_FIELD_MELEE_WEAPON_SKILL_RATING';
  vleMain.Keys[$0566+22+1] := 'PLAYER_FIELD_OFFHAND_WEAPON_SKILL_RATING';
  vleMain.Keys[$0566+23+1] := 'PLAYER_FIELD_RANGED_WEAPON_SKILL_RATING';
  vleMain.Keys[$057D+1] := 'PLAYER_FIELD_ARENA_TEAM_INFO_1_1';
  vleMain.Keys[$057D+1] := 'PLAYER_FIELD_ARENA_TEAM_ID_2v2';
  vleMain.Keys[$057D+5+1] := 'PLAYER_FIELD_ARENA_TEAM_ID_3v3';
  vleMain.Keys[$057D+10+1] := 'PLAYER_FIELD_ARENA_TEAM_ID_5v5';
  vleMain.Keys[$058C+1] := 'PLAYER_FIELD_HONOR_CURRENCY';
  vleMain.Keys[$058D+1] := 'PLAYER_FIELD_ARENA_CURRENCY';
  vleMain.Keys[$058E+1] := 'PLAYER_FIELD_MOD_MANA_REGEN';
  vleMain.Keys[$058F+1] := 'PLAYER_FIELD_MOD_MANA_REGEN_INTERRUPT';
  vleMain.Keys[$0590+1] := 'PLAYER_FIELD_MAX_LEVEL';
  vleMain.Keys[$0591+1] := 'PLAYER_FIELD_DAILY_QUESTS_1';
  vleMain.Keys[$059B+1] := 'PLAYER_FIELD_PADDING';
end;

end.
