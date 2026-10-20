.class final Lmodmenu/MwApi;
.super Ljava/lang/Object;
.source "MwApi.java"


# static fields
.field static final ROWS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    const/16 v0, 0x103

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Actor\u0001addBuff\u0001Actor:addBuff(objid, buffid, bufflv, customticks)\u0001objid:number, buffid:number, bufflv:number, customticks:number\u0001ErrorCode.OK\u0001Obtain Buff\u0001Th\u00eam buff\u0001local result = Actor:addBuff(objid, buffid, bufflv, customticks)"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001addEnchant\u0001Actor:addEnchant(objid, slot, enchantId, enchantLevel)\u0001objid:number, slot:number, enchantId:number, enchantLevel:number\u0001ErrorCode.OK\u0001Incease the enchantment of corresponding equipment\u0001Th\u00eam ph\u1ee5 ma li\u00ean quan\u0001local result = Actor:addEnchant(objid, slot, enchantId, enchantLevel)"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001addHP\u0001Actor:addHP(objid, hp)\u0001objid:number, hp:number\u0001ErrorCode.OK\u0001Increase current HP\u0001Th\u00eam m\u00e1u\u0001local result = Actor:addHP(objid, hp)"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001addOxygen\u0001Actor:addOxygen(objid, oxygen)\u0001objid:number, oxygen:number\u0001ErrorCode.OK\u0001Increase oxygen volume\u0001Th\u00eam oxy\u0001local result = Actor:addOxygen(objid, oxygen)"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001clearActorWithId\u0001Actor:clearActorWithId(actorid, bkill)\u0001actorid:number, bkill:boolean\u0001ErrorCode.OK\u0001Clear the creature\'s id whose id is actorid\u0001X\u00f3a id sinh v\u1eadt v\u1edbi actorid c\u1ee7a sinh v\u1eadt\u0001local result = Actor:clearActorWithId(actorid, bkill)"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001clearAllBadBuff\u0001Actor:clearAllBadBuff(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Clear all the negative buff\u0001X\u00f3a c\u00e1c buff x\u1ea5u\u0001local result = Actor:clearAllBadBuff(objid)"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001clearAllBuff\u0001Actor:clearAllBuff(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Clear all the buff\u0001X\u00f3a t\u1ea5t c\u1ea3 buff\u0001local result = Actor:clearAllBuff(objid)"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001findNearestBlock\u0001Actor:findNearestBlock(objid, blockid, blockRange)\u0001objid:number, blockid:number, blockRange\u0001ErrorCode.OK, x|y|z:number\u0001Find the nearest block\'s id\u0001T\u00ecm id kh\u1ed1i vu\u00f4ng g\u1ea7n nh\u1ea5t\u0001local result = Actor:findNearestBlock(objid, blockid, blockRange)"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getBuffLeftTick\u0001Actor:getBuffLeftTick(objid, buffid)\u0001objid:number, buffid:number\u0001ErrorCode.OK, ticks:number\u0001Get the remaining itck of corresponding buff of current index\u0001Nh\u1eadn ph\u1ea7n c\u00f2n l\u1ea1i c\u1ee7a buff t\u01b0\u01a1ng \u1ee9ng index hi\u1ec7n t\u1ea1i\u0001local result = Actor:getBuffLeftTick(objid, buffid)"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getBuffList\u0001Actor:getBuffList(objid)\u0001objid:number\u0001ErrorCode.OK, num:numberbuff\u6570\u91cf, array:tablebuffid\u6570\u7ec4\u0001Get the buff list\u0001Nh\u1eadn danh s\u00e1ch buff\u0001local result = Actor:getBuffList(objid)"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getCurPlaceDir\u0001Actor:getCurPlaceDir(objid)\u0001objid:number\u0001ErrorCode.OK, dir:number\u0001Get the current facing direction\u0001Nh\u1eadn h\u01b0\u1edbng hi\u1ec7n t\u1ea1i\u0001local result = Actor:getCurPlaceDir(objid)"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getFacePitch\u0001Actor:getFacePitch(objid)\u0001objid:number\u0001ErrorCode.OK, pitch:number\u0001Get the upward angle of actor\'s view\u0001Nh\u1eadn g\u00f3c nh\u00ecn l\u00ean c\u1ee7a actor\u0001local result = Actor:getFacePitch(objid)"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getFaceYaw\u0001Actor:getFaceYaw(objid)\u0001objid:number\u0001ErrorCode.OK, yaw:number\u0001Get the crosswise deviation angle of actor\'s view\u0001Nh\u1eadn g\u00f3c ngang actor theo h\u01b0\u1edbng di chuy\u1ec3n\u0001local result = Actor:getFaceYaw(objid)"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getHP\u0001Actor:getHP(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get current HP\u0001Nh\u1eadn m\u00e1u\u0001local result = Actor:getHP(objid)"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getMaxHP\u0001Actor:getMaxHP(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get current max HP\u0001Nh\u1eadn l\u01b0\u1ee3ng m\u00e1u nhi\u1ec1u nh\u1ea5t\u0001local result = Actor:getMaxHP(objid)"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getObjType\u0001Actor:getObjType(objid)\u0001objid\u0001ErrorCode.OK, objtype:number\u0001Get the type of actor: creature/player...\u0001Nh\u1eadn \u0111\u01b0\u1ee3c lo\u1ea1i actor: sinh v\u1eadt/ ng\u01b0\u1eddi ch\u01a1i\u0001local result = Actor:getObjType(objid)"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getOxygen\u0001Actor:getOxygen(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get oxygen volume\u0001Nh\u1eadn oxy\u0001local result = Actor:getOxygen(objid)"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getPosition\u0001Actor:getPosition(objid)\u0001objid\u0001ErrorCode.OK, x|y|z:number\u0001Get the location of actor\u0001Nh\u1eadn v\u1ecb tr\u00ed actor\u0001local result = Actor:getPosition(objid)"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001getRidingActorObjId\u0001Actor:getRidingActorObjId(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Get the Pferd\'s objid\u0001Nh\u1eadn objib c\u1ee7a sinh v\u1eadt th\u00fa c\u01b0\u1ee1i\u0001local result = Actor:getRidingActorObjId(objid)"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001hasBuff\u0001Actor:hasBuff(objid, buffid)\u0001objid:number, buffid:number\u0001ErrorCode.OK, ret:boolean\u0001If it has any buff\u0001C\u00f3 ph\u1ea3i c\u00f3 buff kh\u00f4ng\u0001local result = Actor:hasBuff(objid, buffid)"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001isInAir\u0001Actor:isInAir(objid)\u0001objid:number\u0001ErrorCode.OK\u0001If it\'s in the air\u0001C\u00f3 ph\u1ea3i \u0111ang tr\u00ean kh\u00f4ng trung\u0001local result = Actor:isInAir(objid)"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001isMob\u0001Actor:isMob(objid)\u0001objid\u0001ErrorCode.OK\u662f\u602a\u7269\u662f\u602a\u7269\u0001Detect if it\'s a monster\u0001Ki\u1ec3m tra xem c\u00f3 ph\u1ea3i l\u00e0 qu\u00e1i v\u1eadt\u0001local result = Actor:isMob(objid)"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001isPlayer\u0001Actor:isPlayer(objid)\u0001objid\u0001ErrorCode.OK\u662f\u73a9\u5bb6\u662f\u73a9\u5bb6\u0001Detect if it\'s a player\u0001Ki\u1ec3m tra xem c\u00f3 ph\u1ea3i l\u00e0 ng\u01b0\u1eddi ch\u01a1i\u0001local result = Actor:isPlayer(objid)"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001jump\u0001Actor:jump(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Jump\u0001Nh\u1ea3y\u0001local result = Actor:jump(objid)"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001killSelf\u0001Actor:killSelf(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Kill yourself\u0001T\u1ef1 s\u00e1t\u0001local result = Actor:killSelf(objid)"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001mountActor\u0001Actor:mountActor(objid, mountobjid, posindex)\u0001objid:number, mountobjid:number, posindex:number\u9a91\u4e58\u4f4d\u0001ErrorCode.OK\u0001Get on, off the vehicle\u0001L\u00ean xe, xu\u1ed1ng xe\u0001local result = Actor:mountActor(objid, mountobjid, posindex)"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001playBodyEffect\u0001Actor:playBodyEffect(objid, type)\u0001objid:number, type:number\u7279\u6548\u7c7b\u578bACTORBODY_EFFECT\u0001ErrorCode.OK\u0001Play the effects\u0001Ph\u00e1t c\u00e1c hi\u1ec7u \u1ee9ng\u0001local result = Actor:playBodyEffect(objid, type)"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001playBodyEffectByFile\u0001Actor:playBodyEffectByFile(objid, filename, sync)\u0001objid:number, filename:string\u6587\u4ef6\u540d, sync:bool\u540c\u6b65\u0001ErrorCode.OK\u0001Play the file effects\u0001Ph\u00e1t file hi\u1ec7u \u1ee9ng\u0001local result = Actor:playBodyEffectByFile(objid, filename, sync)"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001playSound\u0001Actor:playSound(objid, name, volume, pitch, flag)\u0001objid:number, name:string, volume:number, pitch:number, flag:number\u0001ErrorCode.OK\u0001Play sound\u0001Ph\u00e1t \u00e2m thanh\u0001local result = Actor:playSound(objid, name, volume, pitch, flag)"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001playSoundSpecial\u0001Actor:playSoundSpecial(objid, name, type)\u0001objid:number, name:string, type:number\u6307\u5b9a\u7c7b\u578b(GSOUND_TYPE)\u0001ErrorCode.OK\u0001Play sound(specific type:GSOUND_TYPE)\u0001Ph\u00e1t \u00e2m thanh (Lo\u1ea1i:GSOUND_TYPE)\u0001local result = Actor:playSoundSpecial(objid, name, type)"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001removeBuff\u0001Actor:removeBuff(objid, buffid)\u0001objid:number, buffid:number\u0001ErrorCode.OK\u0001Delete the buff\u0001X\u00f3a buff\u0001local result = Actor:removeBuff(objid, buffid)"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001removeEnchant\u0001Actor:removeEnchant(objid, slot, enchantId)\u0001objid:number, slot:number, enchantId:number\u0001ErrorCode.OK\u0001Clear enchantment of corresponding equipment\u0001H\u1ee7y c\u00e1c ph\u1ee5 ma li\u00ean quan\u0001local result = Actor:removeEnchant(objid, slot, enchantId)"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setActionAttrState\u0001Actor:setActionAttrState(objid, actionattr, switch)\u0001objid:number, actionattr:numberPLAYERATTR, switch:boolean\u0001ErrorCode.OK\u0001Set the behavior, attribute and state of creature\u0001C\u00e0i \u0111\u1eb7t h\u00e0nh vi, thu\u1ed9c t\u00ednh v\u00e0 tr\u1ea1ng th\u00e1i c\u1ee7a sinh v\u1eadt\u0001local result = Actor:setActionAttrState(objid, actionattr, switch)"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setAttackType\u0001Actor:setAttackType(objid, attacktype)\u0001objid:number, attacktype:number\u0001ErrorCode.OK\u0001Set the damage type\u0001C\u00e0i \u0111\u1eb7t c\u00e1c lo\u1ea1i s\u00e1t th\u01b0\u01a1ng\u0001local result = Actor:setAttackType(objid, attacktype)"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setFacePitch\u0001Actor:setFacePitch(objid, pitch)\u0001objid:number, pitch:number\u4ef0\u671b\u89d2\u5ea6\u0001ErrorCode.OK\u0001Set the upward angle of actor\'s view\u0001C\u00e0i \u0111\u1eb7t g\u00f3c nh\u00ecn l\u00ean c\u1ee7a actor\u0001local result = Actor:setFacePitch(objid, pitch)"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setFaceYaw\u0001Actor:setFaceYaw(objid, yaw)\u0001objid:number, yaw:number\u89d2\u5ea6\u0001ErrorCode.OK\u0001Set the crosswise deviation angle of actor\'s view\u0001C\u00e0i \u0111\u1eb7t g\u00f3c l\u1ec7ch ngang actor theo h\u01b0\u1edbng di chuy\u1ec3n\u0001local result = Actor:setFaceYaw(objid, yaw)"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setImmuneType\u0001Actor:setImmuneType(objid, immunetype, isadd)\u0001objid:number, immunetype:number, isadd:number\u0001ErrorCode.OK\u0001Set damage immunity type\u0001C\u00e0i \u0111\u1eb7t mi\u1ec5n nhi\u1ec5m s\u00e1t th\u01b0\u01a1ng\u0001local result = Actor:setImmuneType(objid, immunetype, isadd)"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001setPosition\u0001Actor:setPosition(objid, x, y, z)\u0001objid:number, x|y|z:number\u0001ErrorCode.OK\u0001Set the location of actor\u0001C\u00e0i \u0111\u1eb7t v\u1ecb tr\u00ed actor\u0001local result = Actor:setPosition(objid, x, y, z)"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001stopBodyEffect\u0001Actor:stopBodyEffect(objid, type)\u0001objid:number, type:number\u7279\u6548\u7c7b\u578bACTORBODY_EFFECT\u0001ErrorCode.OK\u0001Stop the effects\u0001D\u1eebng c\u00e1c hi\u1ec7u \u1ee9ng\u0001local result = Actor:stopBodyEffect(objid, type)"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001stopBodyEffectByFile\u0001Actor:stopBodyEffectByFile(objid, filename)\u0001objid:number, filename:string\u6587\u4ef6\u540d\u0001ErrorCode.OK\u0001Stop the file effects\u0001D\u1eebng file hi\u1ec7u \u1ee9ng\u0001local result = Actor:stopBodyEffectByFile(objid, filename)"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001tryMoveToActor\u0001Actor:tryMoveToActor(self_objid, target_objid, speed)\u0001self_objid:number, target_objid:number, speed:number\u0001ErrorCode.OK\u0001Move toward target actor\u0001Di chuy\u1ec3n v\u1ec1 ph\u00eda actor m\u1ee5c ti\u00eau\u0001local result = Actor:tryMoveToActor(self_objid, target_objid, speed)"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001tryMoveToPos\u0001Actor:tryMoveToPos(objid, x, y, z, speed)\u0001objid:number, x|y|z:number, speed:number\u0001ErrorCode.OK\u0001Move toward target actor\u0001Di chuy\u1ec3n v\u1ec1 ph\u00eda v\u1ecb tr\u00ed m\u1ee5c ti\u00eau\u0001local result = Actor:tryMoveToPos(objid, x, y, z, speed)"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001tryNavigationToPos\u0001Actor:tryNavigationToPos(objid, x, y, z, cancontrol)\u0001objid:number, x|y|z:number, cancontrol:boolean\u0001ErrorCode.OK\u0001Find the way to target location\u0001T\u00ecm \u0111\u01b0\u1eddng t\u1edbi v\u1ecb tr\u00ed m\u1ee5c ti\u00eau\u0001local result = Actor:tryNavigationToPos(objid, x, y, z, cancontrol)"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001turnFacePitch\u0001Actor:turnFacePitch(objid, offset)\u0001objid:number, offset:number\u8f6c\u52a8\u89d2\u5ea6\u0001ErrorCode.OK\u0001Change the upward deviation angle of actor\u0001\u0110\u1ed5i g\u00f3c nh\u00ecn l\u00ean c\u1ee7a actor\u0001local result = Actor:turnFacePitch(objid, offset)"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const-string v1, "Actor\u0001turnFaceYaw\u0001Actor:turnFaceYaw(objid, offset)\u0001objid:number, offset:number\u8f6c\u52a8\u89d2\u5ea6\u0001ErrorCode.OK\u0001Change the crosswise deviation angle of actor\u0001\u0110\u1ed5i g\u00f3c ngang actor theo h\u01b0\u1edbng g\u00f3c b\u00f9\u0001local result = Actor:turnFaceYaw(objid, offset)"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001addItem\u0001Backpack:addItem(playerid, itemid, num)\u0001playerid:number, itemid:number, num:number\u0001ErrorCode.OK, successNum:number\u6210\u529f\u6dfb\u52a0\u7684\u6570\u91cf\u0001Add the item to backpack\u0001Th\u00eam v\u1eadt ph\u1ea9m v\u00e0o T\u00fai\u0001local result = Backpack:addItem(playerid, itemid, num)"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001calcSpaceNumForItem\u0001Backpack:calcSpaceNumForItem(playerid, itemid)\u0001playerid:number, itemid:number\u0001ErrorCode.OK, num:number\u0001Calculate the total number of remaining items that the backpack(including backpack bar, shortcut bar) can store\u0001T\u00ednh t\u1ed5ng s\u1ed1 v\u1eadt ph\u1ea9m c\u00f2n l\u1ea1i m\u00e0 T\u00fai (bao g\u1ed3m ng\u0103n T\u00fai, thanh c\u00f4ng c\u1ee5) c\u00f3 th\u1ec3 l\u01b0u tr\u1eef\u0001local result = Backpack:calcSpaceNumForItem(playerid, itemid)"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001clearAllPack\u0001Backpack:clearAllPack(playerid)\u0001playerid:number\u0001\u0001Clear all the backpack(including backpack bar, shortcut bar, equip bar)\u0001X\u00f3a to\u00e0n b\u1ed9 t\u00fai (bao g\u1ed3m ng\u0103n, thanh ph\u00edm t\u1eaft, thanh trang b\u1ecb)\u0001local result = Backpack:clearAllPack(playerid)"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001clearPack\u0001Backpack:clearPack(playerid, bartype)\u0001playerid:number, bartype:number\u80cc\u5305\u7c7b\u578b\u0001ErrorCode.OK\u0001Clear designate backpack bar\u0001X\u00f3a ng\u0103n ch\u1ec9 \u0111\u1ecbnh trong t\u00fai\u0001local result = Backpack:clearPack(playerid, bartype)"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001discardItem\u0001Backpack:discardItem(playerid, gridid, num)\u0001playerid:number, gridid:number, num:number\u0001ErrorCode.OK\u0001Discard the item in backpack\u0001B\u1ecf v\u1eadt ph\u1ea9m ra kh\u1ecfi T\u00fai\u0001local result = Backpack:discardItem(playerid, gridid, num)"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001enoughSpaceForItem\u0001Backpack:enoughSpaceForItem(playerid, itemid, num)\u0001playerid:number, itemid:number, num:number\u9ed8\u8ba41\u0001ErrorCode.OK\u0001If there is enough space in backpack(including backpack bar, shortcut bar) to store items\u0001N\u1ebfu c\u00f3 \u0111\u1ee7 kh\u00f4ng gian trong T\u00fai (bao g\u1ed3m c\u00e1c ng\u0103n T\u00fai, thanh c\u00f4ng c\u1ee5) \u0111\u1ec3 l\u01b0u tr\u1eef v\u1eadt ph\u1ea9m\u0001local result = Backpack:enoughSpaceForItem(playerid, itemid, num)"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getBackpackBarIDRange\u0001Backpack:getBackpackBarIDRange(bartype)\u0001bartype:number\u80cc\u5305\u7c7b\u578b\uff0c\u5feb\u6377\u680f\u3001\u5b58\u50a8\u680f\u3001\u88c5\u5907\u680f\u0001ErrorCode.OK, begid:number\u9053\u5177\u683c\u8d77\u59cbID, endid:number\u9053\u5177\u683c\u672b\u5c3eID\u0001Get the range of backpack bar\'s ID(Start ID~End ID)\u0001Nh\u1eadn ID c\u1ee7a t\u00fai c\u00f4ng c\u1ee5 trong ph\u1ea1m vi ( ID b\u1eaft \u0111\u1ea7u - ID k\u1ebft th\u00fac)\u0001local result = Backpack:getBackpackBarIDRange(bartype)"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getBackpackBarItemList\u0001Backpack:getBackpackBarItemList(playerid, bartype)\u0001playerid:number, bartype:number\u80cc\u5305\u7c7b\u578b\u0001ErrorCode.OK, num:number\u6570\u91cf, arr:table\u9053\u5177ID\u6570\u7ec4\u0001Get items already in backpack bar. Item ID\u0001Nh\u1eadn c\u00e1c v\u1eadt ph\u1ea9m \u0111\u00e3 c\u00f3 trong ng\u0103n T\u00fai. ID v\u1eadt ph\u1ea9m\u0001local result = Backpack:getBackpackBarItemList(playerid, bartype)"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getBackpackBarSize\u0001Backpack:getBackpackBarSize(bartype)\u0001bartype:number\u0001ErrorCode.OK, size:number\u0001Get the size of backpack bar\u0001Nh\u1eadn k\u00edch th\u01b0\u1edbc c\u1ee7a t\u00fai\u0001local result = Backpack:getBackpackBarSize(bartype)"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getBackpackBarValidList\u0001Backpack:getBackpackBarValidList(playerid, bartype)\u0001playerid:number, bartype:number\u80cc\u5305\u7c7b\u578b\u0001ErrorCode.OK, num:number\u6570\u91cf, array:table\u80cc\u5305\u683cID\u6570\u7ec4\u0001Get valid list of items\' ID which are already in backpack bar. Item ID\u0001Nh\u1eadn danh s\u00e1ch ID h\u1ee3p l\u1ec7 c\u1ee7a c\u00e1c v\u1eadt ph\u1ea9m \u0111\u00e3 c\u00f3 trong ng\u0103n T\u00fai. ID v\u1eadt ph\u1ea9m\u0001local result = Backpack:getBackpackBarValidList(playerid, bartype)"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridDurability\u0001Backpack:getGridDurability(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, durcur:number, durmax:number\u0001Get item durability in backpack and maximum durability\u0001Nh\u1eadn \u0111\u1ed9 b\u1ec1n v\u1eadt ph\u1ea9m trong t\u00fai v\u00e0 \u0111\u1ed9 b\u1ec1n t\u1ed1i \u0111a\u0001local result = Backpack:getGridDurability(playerid, gridid)"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridEnchantList\u0001Backpack:getGridEnchantList(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, num:number\u6570\u91cf, arr:table\u9644\u9b54ID\u6570\u7ec4\u0001Get enchantment of items in backpack. Return to enchantment ID.\u0001Nh\u1eadn ph\u1ee5 ma c\u1ee7a c\u00e1c v\u1eadt ph\u1ea9m trong T\u00fai. Quay tr\u1edf l\u1ea1i ID ph\u1ee5 ma.\u0001local result = Backpack:getGridEnchantList(playerid, gridid)"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridItemID\u0001Backpack:getGridItemID(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, itemid:number, num:number\u0001Get item ID and number in backpack\u0001L\u1ea5y ID v\u1eadt ph\u1ea9m v\u00e0 s\u1ed1 trong T\u00fai\u0001local result = Backpack:getGridItemID(playerid, gridid)"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridItemName\u0001Backpack:getGridItemName(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, name:string\u0001Get item name in backpack\u0001L\u1ea5y t\u00ean v\u1eadt ph\u1ea9m trong T\u00fai\u0001local result = Backpack:getGridItemName(playerid, gridid)"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridNum\u0001Backpack:getGridNum(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK\u0001Get the number of items in one slot of backpack\u0001L\u1ea5y s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m trong m\u1ed9t \u00f4 c\u1ee7a ba l\u00f4\u0001local result = Backpack:getGridNum(playerid, gridid)"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridStack\u0001Backpack:getGridStack(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, num:number, maxstack:number\u0001Get the number of items in backpack and max no. of stacks\u0001L\u1ea5y s\u1ed1 l\u01b0\u1ee3ng v\u1eadt ph\u1ea9m trong T\u00fai v\u00e0 t\u1ed1i \u0111a s\u1ed1 l\u01b0\u1ee3ng c\u1ee7a ng\u0103n T\u00fai\u0001local result = Backpack:getGridStack(playerid, gridid)"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getGridToolType\u0001Backpack:getGridToolType(playerid, gridid)\u0001playerid:number, gridid:number\u0001ErrorCode.OK, type:number\u5de5\u5177\u7c7b\u578b\u0001Get the item tool type in backpack (<0 means non-tool)\u0001L\u1ea5y lo\u1ea1i c\u00f4ng c\u1ee5 v\u1eadt ph\u1ea9m trong T\u00fai (<0 c\u00f3 ngh\u0129a l\u00e0 kh\u00f4ng ph\u1ea3i c\u00f4ng c\u1ee5)\u0001local result = Backpack:getGridToolType(playerid, gridid)"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001getItemNumByBackpackBar\u0001Backpack:getItemNumByBackpackBar(playerid, bartype, itemid)\u0001playerid:number, bartype:number, itemid:number\u0001ErrorCode.OK, num:number\u9053\u5177\u603b\u6570\u91cf, arr:table\u9053\u5177\u683cID\u6570\u7ec4\u0001Get the total number of items in backpack. Return to backpacks with items\u0001L\u1ea5y t\u1ed5ng s\u1ed1 v\u1eadt ph\u1ea9m trong T\u00fai. Quay tr\u1edf l\u1ea1i T\u00fai v\u1edbi c\u00e1c v\u1eadt ph\u1ea9m\u0001local result = Backpack:getItemNumByBackpackBar(playerid, bartype, itemid)"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001hasItemByBackpackBar\u0001Backpack:hasItemByBackpackBar(playerid, bartype, itemid)\u0001playerid:number, bartype:number, itemid:number\u0001ErrorCode.OK\u0001Detect if there is any designated item in backpack\u0001Ph\u00e1t hi\u1ec7n n\u1ebfu c\u00f3 b\u1ea5t k\u1ef3 v\u1eadt ph\u1ea9m ch\u1ec9 \u0111\u1ecbnh trong T\u00fai\u0001local result = Backpack:hasItemByBackpackBar(playerid, bartype, itemid)"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001moveGridItem\u0001Backpack:moveGridItem(playerid, gridsrc, griddst, num)\u0001playerid:number, gridsrc:number, griddst:number, num:number\u9ed8\u8ba4\u5168\u90e8\u8f6c\u79fb\u0001ErrorCode.OK\u0001Remove items in backpack. All transferred by default\u0001X\u00f3a c\u00f4ng c\u1ee5 trong t\u00fai, t\u1ea5t c\u1ea3 b\u1ecb x\u00f3a theo m\u1eb7c \u0111\u1ecbnh\u0001local result = Backpack:moveGridItem(playerid, gridsrc, griddst, num)"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001removeGridItem\u0001Backpack:removeGridItem(playerid, gridid, num)\u0001playerid:number, gridid:number, num:number\u9ed8\u8ba4\u5168\u90e8\u9053\u5177\u0001ErrorCode.OK\u0001Remove some items in backpack bar. Removed by item slots. All removed by default\u0001X\u00f3a s\u1ed1 l\u01b0\u1ee3ng c\u00f4ng c\u1ee5 nh\u1ea5t \u0111\u1ecbnh, th\u00f4ng qua x\u00f3a c\u00e1c c\u00f4ng c\u1ee5, m\u1eb7c \u0111\u1ecbnh x\u00f3a to\u00e0n b\u1ed9\u0001local result = Backpack:removeGridItem(playerid, gridid, num)"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001removeGridItemByItemID\u0001Backpack:removeGridItemByItemID(playerid, itemid, num)\u0001playerid:number, itemid:number, num:number\u9ed8\u8ba4\u5168\u90e8\u9053\u5177\u0001ErrorCode.OK, num:number\u6210\u529f\u79fb\u9664\u6570\u91cf\u0001Remove some items in backpack bar. Removed by item ID. All removed by default\u0001X\u00f3a m\u1ed9t s\u1ed1 m\u1ee5c trong ng\u0103n c\u1ee7a t\u00fai, th\u00f4ng qua vi\u1ec7c x\u00f3a ID c\u00f4ng c\u1ee5. T\u1ea5t c\u1ea3 b\u1ecb x\u00f3a theo m\u1eb7c \u0111\u1ecbnh\u0001local result = Backpack:removeGridItemByItemID(playerid, itemid, num)"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001setGridItem\u0001Backpack:setGridItem(playerid, gridid, itemid, num, durability)\u0001playerid:number, gridid:number\u9053\u5177\u683cID, itemid:number, num:number\u9ed8\u8ba41, durability:number\u8010\u4e45\u5ea6\uff0c\u9ed8\u8ba4\u6ee1\u8010\u4e45\u0001ErrorCode.OK\u0001Set the backpack\u0001C\u00e0i \u0111\u1eb7t \u00f4 c\u00f4ng c\u1ee5 trong t\u00fai\u0001local result = Backpack:setGridItem(playerid, gridid, itemid, num, durability)"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    const-string v1, "BackPack\u0001swapGridItem\u0001Backpack:swapGridItem(playerid, gridsrc, griddst)\u0001playerid:number, gridsrc:number, griddst:number\u0001ErrorCode.OK\u0001Exchange item backpack\u0001Trao \u0111\u1ed5i c\u00e1c v\u1eadt ph\u1ea9m trong T\u00fai\u0001local result = Backpack:swapGridItem(playerid, gridsrc, griddst)"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    const-string v1, "Block\u0001destroyBlock\u0001Block:destroyBlock(x, y, z, dropitem)\u0001x|y|z:number, dropitem:boolean\u0001ErrorCode.OK\u0001Destroy the block\u0001Ph\u00e1 kh\u1ed1i\u0001local result = Block:destroyBlock(x, y, z, dropitem)"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    const-string v1, "Block\u0001getBlockID\u0001Block:getBlockID(x, y, z)\u0001x|y|z:number\u0001ErrorCode.OK, id:number\u0001Obtain corresponding block id\u0001Nh\u1eadn kh\u1ed1i vu\u00f4ng v\u1edbi ID t\u01b0\u01a1ng \u1ee9ng\u0001local result = Block:getBlockID(x, y, z)"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    const-string v1, "Block\u0001getBlockSwitchStatus\u0001Block:getBlockSwitchStatus(pos)\u0001x|y|z:number\u0001ErrorCode.OK, isactive:boolean\u0001Obtain on-off state of function block\u0001C\u00f3 \u0111\u01b0\u1ee3c tr\u1ea1ng th\u00e1i b\u1eadt- t\u1eaft c\u1ee7a kh\u1ed1i ch\u1ee9c n\u0103ng\u0001local result = Block:getBlockSwitchStatus(pos)"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    const-string v1, "Block\u0001isAirBlock\u0001Block:isAirBlock(x, y, z)\u0001x|y|z:number\u0001ErrorCode.OK, data:boolean\u0001Whether the block is air\u0001Kh\u1ed1i vu\u00f4ng c\u00f3 ph\u1ea3i l\u00e0 kh\u00f4ng kh\u00ed\u0001local result = Block:isAirBlock(x, y, z)"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    const-string v1, "Block\u0001isLiquidBlock\u0001Block:isLiquidBlock(x, y, z)\u0001x|y|z:number\u0001ErrorCode.OK, data:boolean\u0001Whether the block is fluid\u0001Kh\u1ed1i vu\u00f4ng c\u00f3 ph\u1ea3i l\u00e0 ch\u1ea5t l\u1ecfng\u0001local result = Block:isLiquidBlock(x, y, z)"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    const-string v1, "Block\u0001isSolidBlock\u0001Block:isSolidBlock(x, y, z)\u0001x|y|z:number\u0001ErrorCode.OK, data:boolean\u0001Whether the block is entity\u0001Kh\u1ed1i vu\u00f4ng c\u00f3 ph\u1ea3i l\u00e0 th\u1ef1c th\u1ec3\u0001local result = Block:isSolidBlock(x, y, z)"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    const-string v1, "Block\u0001placeBlock\u0001Block:placeBlock(blockid, x, y, z, face)\u0001blockid:number, x|y|z:number, face:number\u0001ErrorCode.OK, ret:boolean\u6210\u529f\u653e\u7f6e\u4e0e\u5426\u0001Place the block\u0001C\u00e0i \u0111\u1eb7t kh\u1ed1i\u0001local result = Block:placeBlock(blockid, x, y, z, face)"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    const-string v1, "Block\u0001setBlockAll\u0001Block:setBlockAll(x, y, z, blockid, data)\u0001x|y|z:number, blockid:number, data:number, flag:number\u0001ErrorCode.OK\u0001Set blockalldata update and inform\u0001C\u00e0i \u0111\u1eb7t blockalldata C\u1eadp nh\u1eadt+ Th\u00f4ng b\u00e1o\u0001local result = Block:setBlockAll(x, y, z, blockid, data)"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    const-string v1, "Block\u0001setBlockAllForNotify\u0001Block:setBlockAllForNotify(x, y, z, blockid)\u0001x|y|z:number, blockid:number, data:number, flag:number\u0001ErrorCode.OK\u0001Set blockalldata and update current location blocks\u0001C\u00e0i \u0111\u1eb7t blockalldata C\u1eadp nh\u1eadt v\u1ecb tr\u00ed kh\u1ed1i vu\u00f4ng hi\u1ec7n t\u1ea1i\u0001local result = Block:setBlockAllForNotify(x, y, z, blockid)"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    const-string v1, "Block\u0001setBlockAllForUpdate\u0001Block:setBlockAllForUpdate(x, y, z, blockid)\u0001x|y|z:number, blockid:number, data:number, flag:number\u0001ErrorCode.OK\u0001Set blockalldata and inform surrounding blocks\u0001C\u00e0i \u0111\u1eb7t blockalldata Th\u00f4ng b\u00e1o c\u00e1c kh\u1ed1i xung quanh\u0001local result = Block:setBlockAllForUpdate(x, y, z, blockid)"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    const-string v1, "Block\u0001setBlockSettingAttState\u0001Block:setBlockSettingAttState(blockid, atttype, switch)\u0001blockid:number, atttype:BLOCKATTR, switch:boolean\u0001ErrorCode.OK\u0001Set block\'s attribute and state\u0001C\u00e0i \u0111\u1eb7t tr\u1ea1ng th\u00e1i thu\u1ed9c t\u00ednh kh\u1ed1i vu\u00f4ng\u0001local result = Block:setBlockSettingAttState(blockid, atttype, switch)"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    const-string v1, "Block\u0001setBlockSwitchStatus\u0001Block:setBlockSwitchStatus(pos, isactive)\u0001x|y|z:number, isactive:boolean\u0001ErrorCode.OK\u0001Set on-off state of function block\u0001C\u00e0i \u0111\u1eb7t tr\u1ea1ng th\u00e1i b\u1eadt - t\u1eaft kh\u1ed1i ch\u1ee9c n\u0103ng\u0001local result = Block:setBlockSwitchStatus(pos, isactive)"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    const-string v1, "Chat\u0001sendChat\u0001Chat:sendChat(content)\u0001content:string, type:number0\u8868\u793a\u666e\u901a\u804a\u5929\uff0c1\u8868\u793a\u7cfb\u7edf\u6d88\u606f\u0001ErrorCode.OK\u0001Send chat message\u0001G\u1eedi v\u0103n b\u1ea3n chat\u0001local result = Chat:sendChat(content)"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    const-string v1, "Chat\u0001sendSystemMsg\u0001Chat:sendSystemMsg(content)\u0001content:string, type:number0\u8868\u793a\u666e\u901a\u804a\u5929\uff0c1\u8868\u793a\u7cfb\u7edf\u6d88\u606f\u0001ErrorCode.OK\u0001Send system message\u0001G\u1eedi v\u0103n b\u1ea3n chat\u0001local result = Chat:sendSystemMsg(content)"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001addModAttrib\u0001Creature:addModAttrib(objid, attrtype, value)\u0001objid:number, attrtype:MODATTRIB_TYPE\u9644\u9b54\u5c5e\u6027\u7c7b\u578b, value:number\u0001ErrorCode.OK\u0001Increase the ModAttrib of monster\u0001Th\u00eam l\u01b0\u1ee3ng ModAttrib c\u1ee7a qu\u00e1i v\u1eadt\u0001local modAttrType = MODATTRIB_TYPE.MODATTR_MOVE_SPEED local result = Creature:addModAttrib(objid, modAttrType, 5) if result == ErrorCode.OK then print(\'\u589e\u52a0\u602a\u7269\u79fb\u52a8\u901f\u5ea6\') end"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getActorID\u0001Creature:getActorID(objid)\u0001objid:number\u0001ErrorCode.OK, actorid:number\u0001Get ID of monster resource\u0001Nh\u1eadn ngu\u1ed3n ID sinh v\u1eadt\u0001local wolfId, dogId = 3407, 3408 --\u72fc/\u72d7\u7684\u8d44\u6e90Id local result, actorId = Creature:getActorID(objId) if result == ErrorCode.OK then if actorId == dogId then print(\"The creature is A Dog!\") end if actorId == wolfId then print(\"The creature is A Wolf!\") end end"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getActorName\u0001Creature:getActorName(objid)\u0001objid:number\u0001ErrorCode.OK, name:string\u0001Get ID of monster resource\u0001Nh\u1eadn ngu\u1ed3n ID sinh v\u1eadt\u0001local result = Creature:getActorName(objid)"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getDodge\u0001Creature:getDodge(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Dodge\u0001Tr\u00e1nh\u0001local result = Creature:getDodge(objid)"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getFood\u0001Creature:getFood(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Get satiety\u0001Xem \u0111\u1ed9 \u0111\u00f3i\u0001local result = Creature:getFood(objid)"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getHpRecover\u0001Creature:getHpRecover(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001HP recover\u0001Hp h\u1ed3i ph\u1ee5c\u0001local result = Creature:getHpRecover(objid)"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getJumpPower\u0001Creature:getJumpPower(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Jump force\u0001L\u1ef1c nh\u1ea3y\u0001local result = Creature:getJumpPower(objid)"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getMass\u0001Creature:getMass(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Weight\u0001Tr\u1ecdng l\u01b0\u1ee3ng\u0001local result = Creature:getMass(objid)"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getMaxFood\u0001Creature:getMaxFood(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Get max satiety\u0001Xem \u0111\u1ed9 \u0111\u00f3i t\u1ed1i \u0111a\u0001local result = Creature:getMaxFood(objid)"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getMaxOxygen\u0001Creature:getMaxOxygen(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Max oxygen volume\u0001L\u01b0\u1ee3ng oxy t\u1ed1i \u0111a\u0001local result = Creature:getMaxOxygen(objid)"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getModAttrib\u0001Creature:getModAttrib(objid, attrtype)\u0001objid:number, attrtype:MODATTRIB_TYPE\u9644\u9b54\u5c5e\u6027\u7c7b\u578b\u0001ErrorCode.OK, value:number\u0001Increase the ModAttrib of monster\u0001Nh\u1eadn l\u01b0\u1ee3ng ModAttrib c\u1ee7a qu\u00e1i v\u1eadt\u0001local modAttrType = MODATTRIB_TYPE.MODATTR_MOVE_SPEED local result, modAttrVal = Creature:getModAttrib(objid, modAttrType) if result == ErrorCode.OK then print(\'\u602a\u7269\u7684\u79fb\u52a8\u901f\u5ea6\u4e3a\', modAttrVal) end"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getPunchAttack\u0001Creature:getPunchAttack(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Melee attack\u0001T\u1ea5n c\u00f4ng c\u1eadn chi\u1ebfn\u0001local result = Creature:getPunchAttack(objid)"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getPunchDefense\u0001Creature:getPunchDefense(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Melee defense\u0001Ph\u00f2ng v\u1ec7 c\u1eadn chi\u1ebfn\u0001local result = Creature:getPunchDefense(objid)"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getRangeAttack\u0001Creature:getRangeAttack(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Ranged attack\u0001T\u1ea5n c\u00f4ng vi\u1ec5n chi\u1ebfn\u0001local result = Creature:getRangeAttack(objid)"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getRangeDefense\u0001Creature:getRangeDefense(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Ranged defense\u0001Ph\u00f2ng v\u1ec7 vi\u1ec5n chi\u1ebfn\u0001local result = Creature:getRangeDefense(objid)"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getSwimSpeed\u0001Creature:getSwimSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Swimming speed(in water)\u0001T\u1ed1c \u0111\u1ed9 b\u01a1i ( trong n\u01b0\u1edbc)\u0001local result = Creature:getSwimSpeed(objid)"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getTamedOwnerID\u0001Creature:getTamedOwnerID(objid)\u0001objid:number\u0001ErrorCode.OK, uin:number0\u8868\u793a\u672a\u9a6f\u670d\u0001Get the id of player who has tamed creature\u0001Nh\u1eadn ID c\u1ee7a ng\u01b0\u1eddi thu\u1ea7n ph\u1ee5c\u0001local result, ownerId = Creature:getTamedOwnerID(objId) if result == ErrorCode.OK and ownerId ~= 0 then local result, nickName = Player:getNickname(ownerId) if result == ErrorCode.OK then print(\'\u73a9\u5bb6<\'+nickName+\'>\u7684\u5ba0\u7269\u3002\u3002\u3002\') end"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getTeam\u0001Creature:getTeam(objid)\u0001objid:number\u0001ErrorCode.OK, teamid:number\u0001Set the creature team\u0001C\u00e0i \u0111\u1eb7t nh\u00f3m sinh v\u1eadt\u0001local result = Creature:getTeam(objid)"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001getWalkSpeed\u0001Creature:getWalkSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Walking speed\u0001T\u1ed1c \u0111\u1ed9 \u0111i b\u1ed9\u0001local result = Creature:getWalkSpeed(objid)"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001isAdult\u0001Creature:isAdult(objid)\u0001objid:number\u0001ErrorCode.OK\u5df2\u7ecf\u6210\u5e74\u5df2\u7ecf\u6210\u5e74\u0001Is it adult?\u0001\u0110\u00e3 \u0111\u1ee7 tu\u1ed5i v\u1ecb th\u00e0nh ni\u00ean ch\u01b0a?\u0001local result = Creature:isAdult(objId) if result == ErrorCode.OK then print(\"\u8be5\u751f\u7269\u5df2\u6210\u5e74\") end"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setAIActive\u0001Creature:setAIActive(objid, v)\u0001objid:number, v:boolean\u0001ErrorCode.OK\u0001Set if AI takes effect\u0001C\u00e0i \u0111\u1eb7t AI li\u1ec7u c\u00f3 hi\u1ec7u qu\u1ea3 kh\u00f4ng\u0001local result = Creature:setAIActive(objId, true) if result == ErrorCode.OK then print(\"\u8be5\u751f\u7269\u7684AI\u5df2\u7ecf\u751f\u6548\") end"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setDodge\u0001Creature:setDodge(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set dodging\u0001C\u00e0i \u0111\u1eb7t tr\u00e1nh\u0001local result = Creature:setDodge(objid, val)"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setFood\u0001Creature:setFood(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set satiety\u0001C\u00e0i \u0111\u1eb7t \u0111\u1ed9 \u0111\u00f3i\u0001local result = Creature:setFood(objid, val)"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setHP\u0001Creature:setHP(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set HP\u0001C\u00e0i \u0111\u1eb7t HP\u0001local result = Creature:setHP(objid, val)"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setHpRecover\u0001Creature:setHpRecover(objid)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set HP recovery\u0001C\u00e0i \u0111\u1eb7t h\u1ed3i ph\u1ee5c HP\u0001local result = Creature:setHpRecover(objid)"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setJumpPower\u0001Creature:setJumpPower(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set the jump force\u0001C\u00e0i \u0111\u1eb7t l\u1ef1c nh\u1ea3y\u0001local result = Creature:setJumpPower(objid, val)"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setMaxHp\u0001Creature:setMaxHp(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set HP\u0001C\u00e0i \u0111\u1eb7t HP\u0001local result = Creature:setMaxHp(objid, val)"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setOxygen\u0001Creature:setOxygen(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set oxygen\u0001C\u00e0i \u0111\u1eb7t oxy\u0001local result = Creature:setOxygen(objid, val)"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setOxygenNeed\u0001Creature:setOxygenNeed(objid, v)\u0001objid:number, v:boolean\u0001ErrorCode.OK\u0001Set if oxygen is necessary\u0001C\u00e0i \u0111\u1eb7t xem li\u1ec7u c\u00f3 c\u1ea7n oxy\u0001local result = Creature:setOxygenNeed(objId, true) if result == ErrorCode.OK then print(\"\u8be5\u751f\u7269\u4f9d\u8d56\u6c27\u6c14\u751f\u5b58!\") end"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setPanic\u0001Creature:setPanic(objid, v)\u0001objid:number, v:boolean\u0001ErrorCode.OK\u0001Set if it causes panic\u0001C\u00e0i \u0111\u1eb7t xem li\u1ec7u c\u00f3 ph\u1ea3i l\u00e0 b\u1ea1o l\u1ef1c\u0001local result = Creature:setPanic(objId, true) if result == ErrorCode.OK then print(\"\u8be5\u751f\u7269\u6b63\u5728\u6050\u614c\u4e2d\") end"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setPunchAttack\u0001Creature:setPunchAttack(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set melee attack\u0001C\u00e0i \u0111\u1eb7t t\u1ea5n c\u00f4ng c\u1eadn chi\u1ebfn\u0001local result = Creature:setPunchAttack(objid, val)"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setPunchDefense\u0001Creature:setPunchDefense(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set melee defense\u0001C\u00e0i \u0111\u1eb7t ph\u00f2ng th\u1ee7 c\u1eadn chi\u1ebfn\u0001local result = Creature:setPunchDefense(objid, val)"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setRangeAttack\u0001Creature:setRangeAttack(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set ranged attack\u0001C\u00e0i \u0111\u1eb7t t\u1ea5n c\u00f4ng vi\u1ec5n chi\u1ebfn\u0001local result = Creature:setRangeAttack(objid, val)"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setRangeDefense\u0001Creature:setRangeDefense(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set ranged defense\u0001C\u00e0i \u0111\u1eb7t ph\u00f2ng th\u1ee7 vi\u1ec5n chi\u1ebfn\u0001local result = Creature:setRangeDefense(objid, val)"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setSwimSpeed\u0001Creature:setSwimSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set swimming speed(in water)\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 b\u01a1i ( trong n\u01b0\u1edbc)\u0001local result = Creature:setSwimSpeed(objid, val)"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setTeam\u0001Creature:setTeam(objid, teamid)\u0001objid:number, teamid:number\u0001ErrorCode.OK\u0001Set the creature team\u0001C\u00e0i \u0111\u1eb7t nh\u00f3m sinh v\u1eadt\u0001local result = Creature:setTeam(objid, teamid)"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    const-string v1, "Creature\u0001setWalkSpeed\u0001Creature:setWalkSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set walking speed\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 \u0111i b\u1ed9\u0001local result = Creature:setWalkSpeed(objid, val)"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    const-string v1, "Game\u0001addRenderGlobalEffect\u0001Game:addRenderGlobalEffect(path)\u0001path:string\u0001ErrorCode.OK, effectid:number\u0001New global effect\u0001Hi\u1ec7u \u1ee9ng to\u00e0n map m\u1edbi\u0001local result = Game:addRenderGlobalEffect(path)"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    const-string v1, "Game\u0001doGameEnd\u0001Game:doGameEnd()\u0001nil\u0001ErrorCode.OK\u0001End the game\u0001K\u1ebft Th\u00fac game\u0001local result = Game:doGameEnd()"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    const-string v1, "Game\u0001getScriptVar\u0001Game:getScriptVar(index)\u0001index:number\u4ece1\u5f00\u59cb\u7d22\u5f15\u0001ErrorCode.OK, val:number\u81ea\u5b9a\u4e49\u7684\u503c\u0001Receive script attribute for custom\u0001Nh\u1eadn \u0111\u1eb7c t\u00ednh c\u1ee7a script \u0111\u1ec3 t\u00f9y ch\u1ec9nh\u0001local result = Game:getScriptVar(index)"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    const-string v1, "Game\u0001msgBox\u0001Game:msgBox(msg)\u0001\u0001\u0001messagebox\u0001H\u1ed9p th\u01b0\u0001local result = Game:msgBox(msg)"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    const-string v1, "Game\u0001removeRenderGlobalEffect\u0001Game:removeRenderGlobalEffect(effectid)\u0001effectid:number\u0001ErrorCode.OK\u0001Clear global effect\u0001X\u00f3a hi\u1ec7u \u1ee9ng to\u00e0n map\u0001local result = Game:removeRenderGlobalEffect(effectid)"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    const-string v1, "Game\u0001sendScriptVars2Client\u0001Game:sendScriptVars2Client()\u0001nil\u0001ErrorCode.OK\u0001Upload the script\'s attribute\u0001T\u1ea3i l\u00ean \u0111\u1eb7c t\u00ednh c\u1ee7a script\u0001local result = Game:sendScriptVars2Client()"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    const-string v1, "Game\u0001setRenderGlobalEffectPos\u0001Game:setRenderGlobalEffectPos(effectid, x, y, z)\u0001effectid:number, x|y|z:number\u0001ErrorCode.OK\u0001Set the position of global effect\u0001C\u00e0i \u0111\u1eb7t v\u1ecb tr\u00ed c\u1ee7a hi\u1ec7u \u1ee9ng to\u00e0n map\u0001local result = Game:setRenderGlobalEffectPos(effectid, x, y, z)"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    const-string v1, "Game\u0001setRenderGlobalEffectScale\u0001Game:setRenderGlobalEffectScale(effectid, scalex, scaley, scalez)\u0001effectid:number, scalex|scaley|scalez:number\u0001ErrorCode.OK\u0001Set global zoom effect\u0001C\u00e0i \u0111\u1eb7t hi\u1ec7u \u1ee9ng ph\u00f3ng to to\u00e0n map\u0001local result = Game:setRenderGlobalEffectScale(effectid, scalex, scaley, scalez)"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    const-string v1, "Game\u0001setScriptVar\u0001Game:setScriptVar(index, val)\u0001index:number\u4ece1\u5f00\u59cb\u7d22\u5f15, val:number\u81ea\u5b9a\u4e49\u7684\u503c\u0001ErrorCode.OK\u0001Set the script\'s attribute for custom\u0001C\u00e0i \u0111\u1eb7t \u0111\u1eb7c t\u00ednh c\u1ee7a script \u0111\u1ec3 t\u00f9y ch\u1ec9nh\u0001local result = Game:setScriptVar(index, val)"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    const-string v1, "Item\u0001getDropItemNum\u0001Item:getDropItemNum(objid)\u0001objid:number\u0001ErrorCode.OK, itemnum:number\u0001Get the number of dorps\u0001Nh\u1eadn s\u1ed1 v\u1eadt ph\u1ea9m r\u01a1i\u0001local result = Item:getDropItemNum(objid)"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    const-string v1, "Item\u0001getItemId\u0001Item:getItemId(objid)\u0001objid:number\u0001ErrorCode.OK, itemid:number\u0001Get the ID of item\u0001Nh\u1eadn ID c\u1ee7a v\u1eadt ph\u1ea9m\u0001local result = Item:getItemId(objid)"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    const-string v1, "Item\u0001getItemName\u0001Item:getItemName(itemid)\u0001itemid:number\u0001ErrorCode.OK, name:string\u0001Get the name of item\u0001Xem t\u00ean c\u00f4ng c\u1ee5\u0001local result = Item:getItemName(itemid)"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001deleteShape\u0001MapMark:deleteShape(shapeid)\u0001shapeid:number\u0001ErrorCode.OK\u0001Delete a shape\u0001X\u00f3a h\u00ecnh d\u1ea1ng\u0001local result = MapMark:deleteShape(shapeid)"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001newShape\u0001MapMark:newShape(type, isshow, r, g, b)\u0001type:number, isshow:boolean, r:number, g:number, b:number\u0001ErrorCode.OK, shapeid:number\u0001New shape(line, rectangle, circle)\u0001H\u00ecnh d\u1ea1ng m\u1edbi (\u0111\u01b0\u1eddng th\u1eb3ng, h\u00ecnh ch\u1eef nh\u1eadt, h\u00ecnh tr\u00f2n)\u0001local result = MapMark:newShape(type, isshow, r, g, b)"

    const/16 v2, 0x85

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001setShapeColor\u0001MapMark:setShapeColor(shapeid, r, g, b)\u0001shapeid:number, r:number, g:number, b:number\u0001ErrorCode.OK\u0001Set the shape and color\u0001\u0110\u1eb7t h\u00ecnh d\u1ea1ng v\u00e0 m\u00e0u s\u1eafc\u0001local result = MapMark:setShapeColor(shapeid, r, g, b)"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001showShape\u0001MapMark:showShape(shapeid, showflag)\u0001shapeid:number, showflag:boolean\u0001ErrorCode.OK\u0001Set shape displayed or hidden\u0001\u0110\u1eb7t h\u00ecnh d\u1ea1ng hi\u1ec3n th\u1ecb ho\u1eb7c \u1ea9n\u0001local result = MapMark:showShape(shapeid, showflag)"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001updateCircle\u0001MapMark:updateCircle(shapeid, cx, cz, r)\u0001shapeid:number, cx:number, cz:number, r:number\u0001ErrorCode.OK\u0001Update the shape(circle). Add center coordinates and radius\u0001C\u1eadp nh\u1eadt h\u00ecnh d\u1ea1ng (h\u00ecnh tr\u00f2n). Th\u00eam t\u1ecda \u0111\u1ed9 trung t\u00e2m v\u00e0 b\u00e1n k\u00ednh\u0001local result = MapMark:updateCircle(shapeid, cx, cz, r)"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001updateLine\u0001MapMark:updateLine(shapeid, sx, sz, ex, ez)\u0001shapeid:number, sx:number, sz:number, ex:number, ez:number\u0001ErrorCode.OK\u0001Update shape(line). Add start coordinate and end coordinate\u0001C\u1eadp nh\u1eadt h\u00ecnh d\u1ea1ng (d\u00f2ng). Th\u00eam t\u1ecda \u0111\u1ed9 b\u1eaft \u0111\u1ea7u v\u00e0 t\u1ecda \u0111\u1ed9 k\u1ebft th\u00fac\u0001local result = MapMark:updateLine(shapeid, sx, sz, ex, ez)"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    const-string v1, "Mapmark\u0001updateRectangle\u0001MapMark:updateRectangle(shapeid, sx, sz, w, h)\u0001shapeid:number, sx:number, sz:number, w:number, h:number\u0001ErrorCode.OK\u0001Update shape(rectangle). Add start coordinate and end coordinate\u0001C\u1eadp nh\u1eadt h\u00ecnh d\u1ea1ng (h\u00ecnh ch\u1eef nh\u1eadt). Th\u00eam t\u1ecda \u0111\u1ed9 b\u1eaft \u0111\u1ea7u v\u00e0 t\u1ecda \u0111\u1ed9 k\u1ebft th\u00fac\u0001local result = MapMark:updateRectangle(shapeid, sx, sz, w, h)"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    const-string v1, "Player\u0001changeViewMode\u0001Player:changeViewMode(objid, viewmode, islock)\u0001objid:number, viewmode:numberVIEWPORTTYPE, islock:boolean\u0001ErrorCode.OK\u0001Change angle mode of player\u0001\u0110\u1ed5i ch\u1ebf \u0111\u1ed9 g\u00f3c nh\u00ecn c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:changeViewMode(objid, viewmode, islock)"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    const-string v1, "Player\u0001checkActionAttrState\u0001Player:checkActionAttrState(objid, actionattr)\u0001objid:number, actionattr:numberPLAYERATTR\u0001ErrorCode.OK\u0001The toggle of behavior, attribute and state of player\u0001B\u1eadt - T\u1eaft tr\u1ea1ng th\u00e1i thu\u1ed9c t\u00ednh, h\u00e0nh vi c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:checkActionAttrState(objid, actionattr)"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    const-string v1, "Player\u0001gainItems\u0001Player:gainItems(objid, itemid, num, prioritytype)\u0001objid:number, itemid:number, num:number, prioritytype:number(1\u662f\u4f18\u5148\u5feb\u6377\u680f2\u662f\u4f18\u5148\u80cc\u5305\u680f)\u0001ErrorCode.OK\u0001Add items for players\u0001Th\u00eam c\u00f4ng c\u1ee5 cho ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:gainItems(objid, itemid, num, prioritytype)"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getAimPos\u0001Player:getAimPos(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Get the crosshair position of player\u0001Nh\u1eadn v\u1ecb tr\u00ed c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getAimPos(objid)"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getAttr\u0001Player:getAttr(attrtype)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001nil\u0001nil\u0001local result = Player:getAttr(attrtype)"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getCurFood\u0001Player:getCurFood(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Current satiety\u0001\u0110\u1ed9 \u0111\u00f3i hi\u1ec7n t\u1ea1i\u0001local result = Player:getCurFood(objid)"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getCurHP\u0001Player:getCurHP(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Get the current HP\u0001Xem m\u1ee9c HP hi\u1ec7n t\u1ea1i\u0001local result = Player:getCurHP(objid)"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getCurOxygen\u0001Player:getCurOxygen(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Current oxygen volume\u0001M\u1ee9c oxy hi\u1ec7n t\u1ea1i\u0001local result = Player:getCurOxygen(objid)"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getCurShotcut\u0001Player:getCurShotcut(objid)\u0001objid:number\u0001ErrorCode.OK, scutIdx:number\u0001Get the current shortcut bar\u0001Xem thanh ph\u00edm t\u1eaft hi\u1ec7n t\u1ea1i\u0001local result = Player:getCurShotcut(objid)"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getCurToolID\u0001Player:getCurToolID(objid)\u0001objid:number\u0001ErrorCode.OK, ret\u0001Get the item id currently held by the player\u0001Nh\u1eadn id v\u1eadt ph\u1ea9m hi\u1ec7n t\u1ea1i c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getCurToolID(objid)"

    const/16 v2, 0x94

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getDieTimes\u0001Player:getDieTimes(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get the number of deaths\u0001Xem s\u1ed1 l\u1ea7n ch\u1ebft c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getDieTimes(objid)"

    const/16 v2, 0x95

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getDodge\u0001Player:getDodge(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Dodging speed\u0001T\u1ed1c \u0111\u1ed9 tr\u00e1nh\u0001local result = Player:getDodge(objid)"

    const/16 v2, 0x96

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getFoodLevel\u0001Player:getFoodLevel(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Get the current satiety\u0001Xem \u0111\u1ed9 \u0111\u00f3i hi\u1ec7n t\u1ea1i\u0001local result = Player:getFoodLevel(objid)"

    const/16 v2, 0x97

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getGameRanking\u0001Player:getGameRanking(objid)\u0001objid:number\u0001ErrorCode.OK, rank:number\u0001Get the rank of player\u0001Xem x\u1ebfp h\u1ea1ng c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getGameRanking(objid)"

    const/16 v2, 0x98

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getGameResults\u0001Player:getGameResults(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get result of the game\u0001Xem k\u1ebft qu\u1ea3 thi \u0111\u1ea5u c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getGameResults(objid)"

    const/16 v2, 0x99

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getGameScore\u0001Player:getGameScore(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get score of the game\u0001Xem \u0111i\u1ec3m c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getGameScore(objid)"

    const/16 v2, 0x9a

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getHostUin\u0001Player:getHostUin()\u0001nil\u0001ErrorCode.OK, uin:number\u0001Get the host\u0001Xem ch\u1ee7 ph\u00f2ng\u0001local result = Player:getHostUin()"

    const/16 v2, 0x9b

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getHpRecover\u0001Player:getHpRecover(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001HP recover\u0001Hp h\u1ed3i ph\u1ee5c\u0001local result = Player:getHpRecover(objid)"

    const/16 v2, 0x9c

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getJumpPower\u0001Player:getJumpPower(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Jump force\u0001L\u1ef1c nh\u1ea3y\u0001local result = Player:getJumpPower(objid)"

    const/16 v2, 0x9d

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getLeftLifeNum\u0001Player:getLeftLifeNum(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get the number of remaining lives left\u0001Xem s\u1ed1 m\u1ea1ng c\u00f2n l\u1ea1i c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getLeftLifeNum(objid)"

    const/16 v2, 0x9e

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getMainPlayerUin\u0001Player:getMainPlayerUin()\u0001nil\u0001ErrorCode.OK, uin:number\u0001Get the local player\'s uin\u0001Xem uin c\u1ee7a ng\u01b0\u1eddi ch\u01a1i b\u1ea3n \u0111\u1ecba\u0001local result = Player:getMainPlayerUin()"

    const/16 v2, 0x9f

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getMaxHP\u0001Player:getMaxHP(objid)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Get the current max HP\u0001Xem l\u01b0\u1ee3ng HP t\u1ed1i \u0111a\u0001local result = Player:getMaxHP(objid)"

    const/16 v2, 0xa0

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getMaxOxygen\u0001Player:getMaxOxygen(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001[[\u0001[[\u0001local result = Player:getMaxOxygen(objid)"

    const/16 v2, 0xa1

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getModelScale\u0001Player:getModelScale(objid, val)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Size of model\u0001K\u00edch th\u01b0\u1edbc to nh\u1ecf\u0001local result = Player:getModelScale(objid, val)"

    const/16 v2, 0xa2

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getNickname\u0001Player:getNickname(objid)\u0001objid:number\u0001ErrorCode.OK, name:string\u0001Get the player\'s name\u0001Xem t\u00ean c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:getNickname(objid)"

    const/16 v2, 0xa3

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getPunchAttack\u0001Player:getPunchAttack(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Melee attack\u0001T\u1ea5n c\u00f4ng c\u1eadn chi\u1ebfn\u0001local result = Player:getPunchAttack(objid)"

    const/16 v2, 0xa4

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getPunchDefense\u0001Player:getPunchDefense(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Melee defense\u0001Ph\u00f2ng th\u1ee7 c\u1eadn chi\u1ebfn\u0001local result = Player:getPunchDefense(objid)"

    const/16 v2, 0xa5

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getRangeAttack\u0001Player:getRangeAttack(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Ranged attack\u0001T\u1ea5n c\u00f4ng vi\u1ec5n chi\u1ebfn\u0001local result = Player:getRangeAttack(objid)"

    const/16 v2, 0xa6

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getRangeDefense\u0001Player:getRangeDefense(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Ranged defense\u0001Ph\u00f2ng th\u1ee7 vi\u1ec5n chi\u1ebfn\u0001local result = Player:getRangeDefense(objid)"

    const/16 v2, 0xa7

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getRunSpeed\u0001Player:getRunSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Running speed\u0001T\u1ed1c \u0111\u1ed9 ch\u1ea1y\u0001local result = Player:getRunSpeed(objid)"

    const/16 v2, 0xa8

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getSneakSpeed\u0001Player:getSneakSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Sneaking speed\u0001T\u1ed1c \u0111\u1ed9 tr\u01b0\u1eddn\u0001local result = Player:getSneakSpeed(objid)"

    const/16 v2, 0xa9

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getStarNum\u0001Player:getStarNum(objid, val)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Number of stars\u0001S\u1ed1 sao\u0001local result = Player:getStarNum(objid, val)"

    const/16 v2, 0xaa

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getSwimSpeed\u0001Player:getSwimSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Swimming speed(in water)\u0001T\u1ed1c \u0111\u1ed9 b\u01a1i ( trong n\u01b0\u1edbc)\u0001local result = Player:getSwimSpeed(objid)"

    const/16 v2, 0xab

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getTeam\u0001Player:getTeam(objid)\u0001objid:number\u0001ErrorCode.OK, teamid:number\u0001Get the creature team\u0001Xem nh\u00f3m sinh v\u1eadt\u0001local result = Player:getTeam(objid)"

    const/16 v2, 0xac

    aput-object v1, v0, v2

    const-string v1, "Player\u0001getWalkSpeed\u0001Player:getWalkSpeed(objid)\u0001objid:number, atttype:number\u0001ErrorCode.OK, value:number\u0001Walking speed\u0001T\u1ed1c \u0111\u1ed9 \u0111i b\u1ed9\u0001local result = Player:getWalkSpeed(objid)"

    const/16 v2, 0xad

    aput-object v1, v0, v2

    const-string v1, "Player\u0001isMainPlayer\u0001Player:isMainPlayer(objid)\u0001objid:number\u0001ErrorCode.OK\u662f\u672c\u5730\u73a9\u5bb6\u662f\u672c\u5730\u73a9\u5bb6\u0001Detect if it\'s local player\u0001Ki\u1ec3m tra xem li\u1ec7u c\u00f3 ph\u1ea3i l\u00e0 ng\u01b0\u1eddi ch\u01a1i b\u1ea3n \u0111\u1ecba\u0001local result = Player:isMainPlayer(objid)"

    const/16 v2, 0xae

    aput-object v1, v0, v2

    const-string v1, "Player\u0001notifyGameInfo2Self\u0001Player:notifyGameInfo2Self(objid, info)\u0001objid:number, info:string\u6587\u5b57\u5185\u5bb9\u0001ErrorCode.OK\u0001Display texts in popup window\u0001Hi\u1ec3n th\u1ecb v\u0103n b\u1ea3n c\u1ee7a ng\u01b0\u1eddi ch\u01a1i trong c\u1eeda s\u1ed5\u0001local result = Player:notifyGameInfo2Self(objid, info)"

    const/16 v2, 0xaf

    aput-object v1, v0, v2

    const-string v1, "Player\u0001onCurToolUsed\u0001Player:onCurToolUsed(objid, num)\u0001objid:number, num:number\u9053\u5177\u6570\u91cf\u0001ErrorCode.OK\u0001Set the consumption of item held by player\u0001\u0110\u1eb7t m\u1ee9c ti\u00eau th\u1ee5 v\u1eadt ph\u1ea9m \u0111ang c\u1ea7m tr\u00ean tay c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:onCurToolUsed(objid, num)"

    const/16 v2, 0xb0

    aput-object v1, v0, v2

    const-string v1, "Player\u0001playAct\u0001Player:playAct(objid, actid)\u0001objid:number, actid:number\u52a8\u4f5cid\u0001ErrorCode.OK\u0001Player play the cartoon\u0001Ng\u01b0\u1eddi ch\u01a1i ph\u00e1t ho\u1ea1t h\u00ecnh\u0001local result = Player:playAct(objid, actid)"

    const/16 v2, 0xb1

    aput-object v1, v0, v2

    const-string v1, "Player\u0001removeBackpackItem\u0001Player:removeBackpackItem(objid, itemid, num)\u0001objid:number, itemid:number, num:number\u0001ErrorCode.OK\u0001Remove items in backpack\u0001Di chuy\u1ec3n v\u1eadt ph\u1ea9m trong t\u00fai\u0001local result = Player:removeBackpackItem(objid, itemid, num)"

    const/16 v2, 0xb2

    aput-object v1, v0, v2

    const-string v1, "Player\u0001reviveToPos\u0001Player:reviveToPos(objid, x, y, z)\u0001objid:number, x|y|z:number\u0001ErrorCode.OK\u0001Respawn player at designated point\u0001H\u1ed3i sinh v\u1ec1 v\u1ecb tr\u00ed m\u1eb7c \u0111\u1ecbnh\u0001local result = Player:reviveToPos(objid, x, y, z)"

    const/16 v2, 0xb3

    aput-object v1, v0, v2

    const-string v1, "Player\u0001rotateCamera\u0001Player:rotateCamera(objid, yaw, pitch)\u0001objid:number, yaw:number, pitch:number\u0001ErrorCode.OK\u0001Rotate player\'s lens\u0001Cu\u1ed9n \u1ed1ng k\u00ednh c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:rotateCamera(objid, yaw, pitch)"

    const/16 v2, 0xb4

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setActionAttrState\u0001Player:setActionAttrState(objid, actionattr, switch)\u0001objid:number, actionattr:numberPLAYERATTR, switch:boolean\u0001ErrorCode.OK\u0001Set the behavior, attribute and state of creature\u0001C\u00e0i \u0111\u1eb7t h\u00e0nh vi, thu\u1ed9c t\u00ednh v\u00e0 tr\u1ea1ng th\u00e1i c\u1ee7a sinh v\u1eadt\u0001local result = Player:setActionAttrState(objid, actionattr, switch)"

    const/16 v2, 0xb5

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setAttr\u0001Player:setAttr(attrtype, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001nil\u0001nil\u0001local result = Player:setAttr(attrtype, val)"

    const/16 v2, 0xb6

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setCurFood\u0001Player:setCurFood(objid)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set current satiety\u0001C\u00e0i \u0111\u1eb7t \u0111\u1ed9 \u0111\u00f3i hi\u1ec7n t\u1ea1i\u0001local result = Player:setCurFood(objid)"

    const/16 v2, 0xb7

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setDodge\u0001Player:setDodge(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set dodging speed\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 tr\u00e1nh\u0001local result = Player:setDodge(objid, val)"

    const/16 v2, 0xb8

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setFoodLevel\u0001Player:setFoodLevel(objid, foodLevel)\u0001objid:number, foodLevel:number\u0001ErrorCode.OK\u0001Set the current satiety\u0001C\u00e0i \u0111\u1eb7t \u0111\u1ed9 \u0111\u00f3i hi\u1ec7n t\u1ea1i\u0001local result = Player:setFoodLevel(objid, foodLevel)"

    const/16 v2, 0xb9

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setGameRanking\u0001Player:setGameRanking(objid, rank)\u0001objid:number, rank:number\u0001ErrorCode.OK\u0001Set the rank of player\u0001C\u00e0i \u0111\u1eb7t x\u1ebfp h\u1ea1ng c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:setGameRanking(objid, rank)"

    const/16 v2, 0xba

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setGameResults\u0001Player:setGameResults(objid, result)\u0001objid:number, result\u0001ErrorCode.OK\u0001Set result of the game\u0001C\u00e0i \u0111\u1eb7t k\u1ebft qu\u1ea3 thi \u0111\u1ea5u c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:setGameResults(objid, result)"

    const/16 v2, 0xbb

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setGameScore\u0001Player:setGameScore(objid, score)\u0001objid:number\u0001ErrorCode.OK, value:number\u0001Set score of the game\u0001C\u00e0i \u0111\u1eb7t \u0111i\u1ec3m c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:setGameScore(objid, score)"

    const/16 v2, 0xbc

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setHP\u0001Player:setHP(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set HP\u0001C\u00e0i HP\u0001local result = Player:setHP(objid, val)"

    const/16 v2, 0xbd

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setHpRecover\u0001Player:setHpRecover(objid)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set HP recovery\u0001C\u00e0i \u0111\u1eb7t kh\u00f4i ph\u1ee5c HP\u0001local result = Player:setHpRecover(objid)"

    const/16 v2, 0xbe

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setJumpPower\u0001Player:setJumpPower(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set jump force\u0001C\u00e0i \u0111\u1eb7t l\u1ef1c nh\u1ea3y\u0001local result = Player:setJumpPower(objid, val)"

    const/16 v2, 0xbf

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setMaxHP\u0001Player:setMaxHP(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set the max HP\u0001C\u00e0i l\u01b0\u1ee3ng HP t\u1ed1i \u0111a\u0001local result = Player:setMaxHP(objid, val)"

    const/16 v2, 0xc0

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setModelScale\u0001Player:setModelScale(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set the size of model\u0001C\u00e0i \u0111\u1eb7t k\u00edch th\u01b0\u1edbc m\u00f4 h\u00ecnh\u0001local result = Player:setModelScale(objid, val)"

    const/16 v2, 0xc1

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setOxygen\u0001Player:setOxygen(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set the oxygen\u0001C\u00e0i \u0111\u1eb7t oxy\u0001local result = Player:setOxygen(objid, val)"

    const/16 v2, 0xc2

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setPosition\u0001Player:setPosition(objid, x, y, z)\u0001objid:number, x|y|z:number\u0001ErrorCode.OK\u0001Set the location of actor\u0001C\u00e0i \u0111\u1eb7t v\u1ecb tr\u00ed actor\u0001local result = Player:setPosition(objid, x, y, z)"

    const/16 v2, 0xc3

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setPunchAttack\u0001Player:setPunchAttack(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set melee attack\u0001C\u00e0i \u0111\u1eb7t t\u1ea5n c\u00f4ng c\u1eadn chi\u1ebfn\u0001local result = Player:setPunchAttack(objid, val)"

    const/16 v2, 0xc4

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setPunchDefense\u0001Player:setPunchDefense(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set melee defense\u0001C\u00e0i \u0111\u1eb7t ph\u00f2ng v\u1ec7 c\u1eadn chi\u1ebfn\u0001local result = Player:setPunchDefense(objid, val)"

    const/16 v2, 0xc5

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setRangeAttack\u0001Player:setRangeAttack(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set ranged attack\u0001C\u00e0i \u0111\u1eb7t t\u1ea5n c\u00f4ng vi\u1ec5n chi\u1ebfn\u0001local result = Player:setRangeAttack(objid, val)"

    const/16 v2, 0xc6

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setRangeDefense\u0001Player:setRangeDefense(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set ranged defense\u0001C\u00e0i \u0111\u1eb7t ph\u00f2ng v\u1ec7 vi\u1ec5n chi\u1ebfn\u0001local result = Player:setRangeDefense(objid, val)"

    const/16 v2, 0xc7

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setRevivePoint\u0001Player:setRevivePoint(objid, x, y, z)\u0001objid:number, x|y|z:number\u0001ErrorCode.OK\u0001Change the respawn point\u0001Ch\u1ec9nh s\u1eeda v\u1ecb tr\u00ed h\u1ed3i sinh c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Player:setRevivePoint(objid, x, y, z)"

    const/16 v2, 0xc8

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setRunSpeed\u0001Player:setRunSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set running speed\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 ch\u1ea1y\u0001local result = Player:setRunSpeed(objid, val)"

    const/16 v2, 0xc9

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setSkillCD\u0001Player:setSkillCD(objid, itemid, cd)\u0001objid:number, itemid:number, cd:number\u0001ErrorCode.OK\u0001Set CD\u0001C\u00e0i \u0111\u1eb7t CD\u0001local result = Player:setSkillCD(objid, itemid, cd)"

    const/16 v2, 0xca

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setSneakSpeed\u0001Player:setSneakSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set sneaking speed\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 tr\u01b0\u1eddn\u0001local result = Player:setSneakSpeed(objid, val)"

    const/16 v2, 0xcb

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setStarNum\u0001Player:setStarNum(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set the number of stars\u0001C\u00e0i \u0111\u1eb7t s\u1ed1 sao\u0001local result = Player:setStarNum(objid, val)"

    const/16 v2, 0xcc

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setSwimSpeed\u0001Player:setSwimSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set swimming speed(in water)\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 b\u01a1i ( trong n\u01b0\u1edbc)\u0001local result = Player:setSwimSpeed(objid, val)"

    const/16 v2, 0xcd

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setTeam\u0001Player:setTeam(objid, team)\u0001objid:number, teamid:number\u0001ErrorCode.OK\u0001Set the creature team\u0001C\u00e0i \u0111\u1eb7t nh\u00f3m sinh v\u1eadt\u0001local result = Player:setTeam(objid, team)"

    const/16 v2, 0xce

    aput-object v1, v0, v2

    const-string v1, "Player\u0001setWalkSpeed\u0001Player:setWalkSpeed(objid, val)\u0001objid:number, val:number, atttype:number\u0001ErrorCode.OK\u0001Set walking speed\u0001C\u00e0i \u0111\u1eb7t t\u1ed1c \u0111\u1ed9 \u0111i b\u1ed9\u0001local result = Player:setWalkSpeed(objid, val)"

    const/16 v2, 0xcf

    aput-object v1, v0, v2

    const-string v1, "Player\u0001teleportHome\u0001Player:teleportHome(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Transfer to spawn point\u0001Chuy\u1ec3n \u0111\u1ebfn \u0111i\u1ec3m b\u1eaft \u0111\u1ea7u\u0001local result = Player:teleportHome(objid)"

    const/16 v2, 0xd0

    aput-object v1, v0, v2

    const-string v1, "Player\u0001useItem\u0001Player:useItem(objid, itemid, status, onshift)\u0001objid:number, itemid:number, status:number\u4f7f\u7528\u72b6\u6001, onshift:boolean\u662f\u5426\u6309\u4e0bshift\u952e\u0001ErrorCode.OK\u0001Make player use current item\u0001Cho ph\u00e9p ng\u01b0\u1eddi ch\u01a1i s\u1eed d\u1ee5ng c\u00f4ng c\u1ee5 hi\u1ec7n t\u1ea1i\u0001local result = Player:useItem(objid, itemid, status, onshift)"

    const/16 v2, 0xd1

    aput-object v1, v0, v2

    const-string v1, "Spawnport\u0001getChunkValidSpawnPos\u0001Spawnport:getChunkValidSpawnPos(x, y, z)\u0001x:number, y:number, z:number\u0001ErrorCode.OK, x:number, y:number, z:number\u0001Get the spawn point in region. Add the position of random block in region\u0001L\u1ea5y \u0111i\u1ec3m h\u1ed3i sinh trong khu v\u1ef1c. Th\u00eam v\u1ecb tr\u00ed c\u1ee7a kh\u1ed1i vu\u00f4ng ng\u1eabu nhi\u00ean trong khu v\u1ef1c\u0001local result = Spawnport:getChunkValidSpawnPos(x, y, z)"

    const/16 v2, 0xd2

    aput-object v1, v0, v2

    const-string v1, "Spawnport\u0001getSpawnPoint\u0001Spawnport:getSpawnPoint()\u0001nil\u0001ErrorCode.OK, x:number, y:number, z:number\u0001Get the location of spawn point\u0001L\u1ea5y v\u1ecb tr\u00ed c\u1ee7a \u0111i\u1ec3m h\u1ed5i sinh\u0001local result = Spawnport:getSpawnPoint()"

    const/16 v2, 0xd3

    aput-object v1, v0, v2

    const-string v1, "Team\u0001addTeamDieTimes\u0001Team:addTeamDieTimes(teamid)\u0001teamid:number\u0001ErrorCode.OK\u0001Increase the total deaths of team\u0001Th\u00eam s\u1ed1 ng\u01b0\u1eddi ch\u1ebft trong nh\u00f3m\u0001local result = Team:addTeamDieTimes(teamid)"

    const/16 v2, 0xd4

    aput-object v1, v0, v2

    const-string v1, "Team\u0001addTeamScore\u0001Team:addTeamScore(teamid, score)\u0001teamid:number, score:number\u0001ErrorCode.OK\u0001Increase the team score\u0001Th\u00eam \u0111i\u1ec3m s\u1ed1 nh\u00f3m\u0001local result = Team:addTeamScore(teamid, score)"

    const/16 v2, 0xd5

    aput-object v1, v0, v2

    const-string v1, "Team\u0001changePlayerTeam\u0001Game:changePlayerTeam(uin, teamid)\u0001uin:number, teamid:number\u0001ErrorCode.OK\u0001Change player\'s team\u0001Thay \u0111\u1ed5i nh\u00f3m c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Team:changePlayerTeam(uin, teamid)"

    const/16 v2, 0xd6

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getNumTeam\u0001Team:getNumTeam()\u0001nil\u0001ErrorCode.OK, num:number\u0001Get the number of teams\u0001Nh\u1eadn s\u1ed1 nh\u00f3m\u0001local result = Team:getNumTeam()"

    const/16 v2, 0xd7

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getTeamDieTimes\u0001Team:getTeamDieTimes(teamid)\u0001teamid:number\u0001ErrorCode.OK, times:number\u0001Get the total deaths of team\u0001Xem s\u1ed1 ng\u01b0\u1eddi ch\u1ebft trong nh\u00f3m\u0001local result = Team:getTeamDieTimes(teamid)"

    const/16 v2, 0xd8

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getTeamPlayerNum\u0001Team:getTeamPlayerNum(teamid, alive)\u0001teamid:number\u961f\u4f0dID\uff0c\u9ed8\u8ba4\u5168\u90e8, alive:number\u662f\u5426\u5b58\u6d3b\uff0c\u9ed8\u8ba4\u5168\u90e8\u0001ErrorCode.OK, num:number\u961f\u4f0d\u73a9\u5bb6\u6570\u91cf\u0001Get the designate player team\u0001Nh\u1eadn nh\u00f3m ng\u01b0\u1eddi ch\u01a1i ch\u1ec9 \u0111\u1ecbnh\u0001local result = Team:getTeamPlayerNum(teamid, alive)"

    const/16 v2, 0xd9

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getTeamPlayers\u0001Team:getTeamPlayers(teamid, alive)\u0001teamid:number\u961f\u4f0dID\uff0c\u9ed8\u8ba4\u5168\u90e8, alive:number\u662f\u5426\u5b58\u6d3b\uff0c\u9ed8\u8ba4\u5168\u90e8\u0001ErrorCode.OK, num:number\u961f\u4f0d\u73a9\u5bb6\u6570\u91cf, array:table\u6210\u5458uin\u6570\u7ec4\u0001Get the designate player team\u0001Nh\u1eadn nh\u00f3m ng\u01b0\u1eddi ch\u01a1i ch\u1ec9 \u0111\u1ecbnh\u0001local result = Team:getTeamPlayers(teamid, alive)"

    const/16 v2, 0xda

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getTeamResults\u0001Team:getTeamResults(teamid)\u0001teamid:number\u0001ErrorCode.OK, teamresult:number\u0001Get the current win-los of team\u0001Xem th\u1eafng- thua c\u1ee7a nh\u00f3m\u0001local result = Team:getTeamResults(teamid)"

    const/16 v2, 0xdb

    aput-object v1, v0, v2

    const-string v1, "Team\u0001getTeamScore\u0001Team:getTeamScore(teamid)\u0001teamid:number\u0001ErrorCode.OK, score:number\u0001Get the team score\u0001Nh\u1eadn \u0111i\u1ec3m s\u1ed1 nh\u00f3m\u0001local result = Team:getTeamScore(teamid)"

    const/16 v2, 0xdc

    aput-object v1, v0, v2

    const-string v1, "Team\u0001randomTeamPlayer\u0001Team:randomTeamPlayer(teamid, alive)\u0001teamid:number\u961f\u4f0dID\uff0c\u9ed8\u8ba4\u5168\u90e8, alive:number\u662f\u5426\u5b58\u6d3b\uff0c\u9ed8\u8ba4\u5168\u90e8\u0001ErrorCode.OK, uin:number\u968f\u673a\u51fa\u73a9\u5bb6\u7684uin\u0001Random Player\u0001Ng\u01b0\u1eddi ch\u01a1i ng\u1eabu nhi\u00ean\u0001local result = Team:randomTeamPlayer(teamid, alive)"

    const/16 v2, 0xdd

    aput-object v1, v0, v2

    const-string v1, "Team\u0001setTeamDieTimes\u0001Team:setTeamDieTimes(teamid, times)\u0001teamid:number, times:number\u0001ErrorCode.OK\u0001Set the total deaths of team\u0001C\u00e0i \u0111\u1eb7t s\u1ed1 l\u01b0\u1ee3ng ng\u01b0\u1eddi ch\u1ebft trong nh\u00f3m\u0001local result = Team:setTeamDieTimes(teamid, times)"

    const/16 v2, 0xde

    aput-object v1, v0, v2

    const-string v1, "Team\u0001setTeamPlayersResults\u0001Team:setTeamPlayersResults(teamid, result)\u0001teamid:number, result:number\u0001ErrorCode.OK\u0001Set the win-los of player team\u0001C\u00e0i \u0111\u1eb7t th\u1eafng- thua c\u1ee7a ng\u01b0\u1eddi ch\u01a1i\u0001local result = Team:setTeamPlayersResults(teamid, result)"

    const/16 v2, 0xdf

    aput-object v1, v0, v2

    const-string v1, "Team\u0001setTeamResults\u0001Team:setTeamResults(teamid, result)\u0001teamid:number result?number\u0001ErrorCode.OK\u0001Set the win-los of team\u0001C\u00e0i \u0111\u1eb7t th\u1eafng- thua c\u1ee7a nh\u00f3m\u0001local result = Team:setTeamResults(teamid, result)"

    const/16 v2, 0xe0

    aput-object v1, v0, v2

    const-string v1, "Team\u0001setTeamScore\u0001Team:setTeamScore(teamid, s)\u0001teamid:number, score:number\u0001ErrorCode.OK\u0001Set the team score\u0001C\u00e0i \u0111\u1eb7t \u0111i\u1ec3m s\u1ed1 nh\u00f3m\u0001local result = Team:setTeamScore(teamid, s)"

    const/16 v2, 0xe1

    aput-object v1, v0, v2

    const-string v1, "UI\u0001ShowScreenEffect\u0001UI:ShowScreenEffect(type, isloop, incspeed)\u0001type:number\u6548\u679c\u7c7b\u578b, isloop:boolean\u662f\u5426\u5faa\u73af, incspeed:number\u589e\u901f\u0001ErrorCode.OK\u0001Display screen effect\u0001Xem hi\u1ec7u \u1ee9ng m\u00e0n h\u00ecnh\u0001local result = UI:ShowScreenEffect(type, isloop, incspeed)"

    const/16 v2, 0xe2

    aput-object v1, v0, v2

    const-string v1, "UI\u0001setGBattleUI\u0001UI:setGBattleUI(name, value)\u0001name:string\u8bbe\u5b9a\u540d, value:string or boolean\u8bbe\u5b9a\u503c\u0001ErrorCode.OK\u0001Set summary UI of fight\u0001C\u00e0i \u0111\u1eb7t UI c\u01a1 b\u1ea3n c\u1ee7a cu\u1ed9c chi\u1ebfn\u0001local result = UI:setGBattleUI(name, value)"

    const/16 v2, 0xe3

    aput-object v1, v0, v2

    const-string v1, "UI\u0001setMinimapRenderMode\u0001UI:setMinimapRenderMode(mode)\u0001mode:number\u0001ErrorCode.OK\u0001Set minimap mode: 1. 45\u00b0 rotation angle. 2. Full pic overlook angle\u0001C\u00e0i \u0111\u1eb7t m\u00f4 h\u00ecnh mini map. 1: G\u00f3c nh\u00ecn 45 \u0111\u1ed9; 2: g\u00f3c tr\u00ean c\u00f9ng to\u00e0n c\u1ea3nh\u0001local result = UI:setMinimapRenderMode(mode)"

    const/16 v2, 0xe4

    aput-object v1, v0, v2

    const-string v1, "UI\u0001setShapeCircle\u0001UI:setShapeCircle(uiname, x, y, radius)\u0001uiname:string, x:number, y:number, radius:number\u0001ErrorCode.OK\u0001Shape setting of map marks. Set as circle\u0001C\u00e0i \u0111\u1eb7t h\u00ecnh d\u1ea1ng \u0111\u00e1nh d\u1ea5u Map, \u0111\u1eb7t th\u00e0nh v\u00f2ng tr\u00f2n\u0001local result = UI:setShapeCircle(uiname, x, y, radius)"

    const/16 v2, 0xe5

    aput-object v1, v0, v2

    const-string v1, "UI\u0001setShapeLine\u0001UI:setShapeLine(uiname, p1x, p1y, p2x, p2y)\u0001uiname:string, p1x:number, p1y:number, p2x:number, p2y:number\u0001ErrorCode.OK\u0001Shape setting of map marks. Set as line\u0001C\u00e0i \u0111\u1eb7t h\u00ecnh d\u1ea1ng \u0111\u00e1nh d\u1ea5u Map, \u0111\u01b0\u1ee3c \u0111\u1eb7t th\u00e0nh c\u00e1c d\u00f2ng\u0001local result = UI:setShapeLine(uiname, p1x, p1y, p2x, p2y)"

    const/16 v2, 0xe6

    aput-object v1, v0, v2

    const-string v1, "UI\u0001world2RadarDist\u0001UI:world2RadarDist(length)\u0001length:number\u0001ErrorCode.OK, length:number\u0001Wolrd length changed to minimap\u0001Chi\u1ec1u d\u00e0i th\u1ebf gi\u1edbi thay \u0111\u1ed5i th\u00e0nh mini map\u0001local result = UI:world2RadarDist(length)"

    const/16 v2, 0xe7

    aput-object v1, v0, v2

    const-string v1, "UI\u0001world2RadarPos\u0001UI:world2RadarPos(x, y)\u0001x:number, z:number\u0001ErrorCode.OK, x:number, z:number\u0001World coordinate changed to minimap\u0001Th\u1ebf gi\u1edbi t\u1ecda \u0111\u1ed9 thay \u0111\u1ed5i th\u00e0nh mini map\u0001local result = UI:world2RadarPos(x, y)"

    const/16 v2, 0xe8

    aput-object v1, v0, v2

    const-string v1, "World\u0001despawnActor\u0001World:despawnActor(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Remove actor\u0001Di chuy\u1ec3n actor\u0001local ret, num, array = World:getActorsByBox(aType, x1,y1,z1, x2,y2,z2) if array and #array>0 then --\u79fb\u9664Actor local result = World:despawnActor(array[#array]) if result == ErrorCode.OK then print(\'Despawn the last actor\') end end"

    const/16 v2, 0xe9

    aput-object v1, v0, v2

    const-string v1, "World\u0001despawnCreature\u0001World:despawnCreature(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Remove creature\u0001Di chuy\u1ec3n sinh v\u1eadt\u0001local result = World:despawnCreature(objids[1]) if result == ErrorCode.OK then print(\'Despawn the creature\') end"

    const/16 v2, 0xea

    aput-object v1, v0, v2

    const-string v1, "World\u0001despawnItemByBox\u0001World:despawnItemByBox(x1, y1, z1, x2, y2, z2)\u0001x1|y1|z1:number\u8d77\u59cb\u4f4d\u7f6e, x2|y2|z2:number\u6700\u7ec8\u4f4d\u7f6e\u0001ErrorCode.OK\u0001Remove items(By region)\u0001Di chuy\u1ec3n c\u00f4ng c\u1ee5 (Th\u00f4ng qua khu v\u1ef1c)\u0001local x1, y1, z1 = -5, 5, -5 local x2, y2, z2 = 15, 9, 15 local result = World:despawnItemByBox(x1,y1,z1, x2,y2,z2) if result == ErrorCode.OK then print(\'\u6210\u529f\u5c06\u6307\u5b9a\u533a\u57df\u7684Item\u79fb\u9664\') end"

    const/16 v2, 0xeb

    aput-object v1, v0, v2

    const-string v1, "World\u0001despawnItemByObjid\u0001World:despawnItemByObjid(objid)\u0001objid:number\u0001ErrorCode.OK\u0001Remove item(By ID)\u0001Di chuy\u1ec3n c\u00f4ng c\u1ee5 ( Th\u00f4ng qua ID)\u0001local result = World:despawnItemByObjid(objIds[1]) if result == ErrorCode.OK then print(\'\u6210\u529f\u5c06\u6307\u5b9a\u7684Item\u79fb\u9664\') end"

    const/16 v2, 0xec

    aput-object v1, v0, v2

    const-string v1, "World\u0001getActorsByBox\u0001World:getActorsByBox(objtype, x1, y1, z1, x2, y2, z2)\u0001type:number\u6307\u5b9a\u7c7b\u578b, x1|y1|z1:number\u8d77\u59cb\u4f4d\u7f6e, x2|y2|z2:number\u6700\u7ec8\u4f4d\u7f6e\u0001ErrorCode.OK, num:number, objids:tableobjid\u6570\u7ec4\u0001Obtain actor in designated area\u0001C\u00f3 \u0111\u01b0\u1ee3c actor trong ph\u1ea1m vi ch\u1ec9 \u0111\u1ecbnh\u0001local actorType = 0 --OBJ_TYPE_MONSTER local x1, y1, z1 = -5, 1, -5 local x2, y2, z2 = 15, 9, 15 local ret, num, array = World:getActorsByBox(actorType, x1,y1,z1, x2,y2,z2) if ret == ErrorCode.OK then print(\'Actors ===>> \', num, array) end"

    const/16 v2, 0xed

    aput-object v1, v0, v2

    const-string v1, "World\u0001getAllPlayers\u0001World:getAllPlayers(alive)\u0001alive:number0\u8868\u793a\u9635\u4ea1\uff0c1\u8868\u793a\u5b58\u6d3b\uff0c\u9ed8\u8ba4-1\u8868\u793a\u5168\u4f53\u73a9\u5bb6\u0001ErrorCode.OK, num:number\u6570\u91cf, array:table\u73a9\u5bb6uin\u6570\u7ec4\u0001Obtain all the players. Can control their survival situation\u0001C\u00f3 \u0111\u01b0\u1ee3c t\u1ea5t c\u1ea3 ng\u01b0\u1eddi ch\u01a1i. C\u00f3 th\u1ec3 ki\u1ec3m so\u00e1t t\u00ecnh h\u00ecnh sinh t\u1ed3n c\u1ee7a h\u1ecd\u0001local aliveType = -1 --\u83b7\u53d6\u6240\u6709\u73a9\u5bb6\u6570\u636e local ret, num, array = World:getAllPlayers(aliveType) if ret == ErrorCode.OK then print(\'Actors ===>> \', num, array) end"

    const/16 v2, 0xee

    aput-object v1, v0, v2

    const-string v1, "World\u0001getCameraEditState\u0001World:getCameraEditState()\u0001none\u0001ErrorCode.OK, state:number0\u9ed8\u8ba4\uff0c1\u7f16\u8f91\u72b6\u6001\uff0c2\u6d4b\u8bd5\u72b6\u6001\u0001Obtain view editing state\u0001Ch\u1ec9nh s\u1eeda g\u00f3c nh\u00ecn\u0001local result, state = World:getCameraEditState() if result==ErrorCode.OK then print(\'\u5f53\u524d\u89c6\u89d2\u7f16\u8f91\u72b6\u6001\uff1a\', state) end"

    const/16 v2, 0xef

    aput-object v1, v0, v2

    const-string v1, "World\u0001getCustomCameraConfig\u0001World:getCustomCameraConfig()\u0001none\u0001ErrorCode.OK, config:CameraEditState\u0001Obtain customized camera configuration\u0001Nh\u1eadn c\u1ea5u h\u00ecnh m\u00e1y \u1ea3nh t\u00f9y ch\u1ec9nh\u0001local result = World:getCustomCameraConfig()"

    const/16 v2, 0xf0

    aput-object v1, v0, v2

    const-string v1, "World\u0001getHours\u0001World:getHours()\u0001none\u0001ErrorCode.OK, result:number\u0001Current time(h)\u0001Th\u1eddi gian hi\u1ec7n t\u1ea1i(h)\u0001local result, dayTime = World:getHours() if result==ErrorCode.OK then print(\'\u5f53\u524d\u65f6\u95f4\uff1a\', dayTime) end"

    const/16 v2, 0xf1

    aput-object v1, v0, v2

    const-string v1, "World\u0001getPlayerTotal\u0001World:getPlayerTotal(alive)\u0001alive:number0\u8868\u793a\u9635\u4ea1\uff0c1\u8868\u793a\u5b58\u6d3b\uff0c\u9ed8\u8ba4-1\u8868\u793a\u5168\u4f53\u73a9\u5bb6\u0001ErrorCode.OK, num:number\u6570\u91cf\u0001Obtain all the players. Can control their survival situation\u0001C\u00f3 \u0111\u01b0\u1ee3c t\u1ea5t c\u1ea3 ng\u01b0\u1eddi ch\u01a1i. C\u00f3 th\u1ec3 ki\u1ec3m so\u00e1t t\u00ecnh h\u00ecnh sinh t\u1ed3n c\u1ee7a h\u1ecd\u0001local result = World:getPlayerTotal(alive)"

    const/16 v2, 0xf2

    aput-object v1, v0, v2

    const-string v1, "World\u0001getRangeXZ\u0001World:getRangeXZ()\u0001none\u0001ErrorCode.OK, startX|startZ|endX|endZ:number\u0001Obtain the range of block(chunk)\u0001Nh\u1eadn \u0111\u01b0\u1ee3c ph\u1ea1m vi c\u1ee7a kh\u1ed1i (chunk)\u0001local result, startX,startZ,endX,endZ = World:getRangeXZ() if result==ErrorCode.OK then print(\'StartXZ=(\',startX,\', \',startZ,\'), EndXZ=(\',endX,\', \',endZ,\')\') end"

    const/16 v2, 0xf3

    aput-object v1, v0, v2

    const-string v1, "World\u0001isCreateRunMode\u0001World:isCreateRunMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Survival mode turned from creation mode\u0001Chuy\u1ec3n t\u1eeb ch\u1ebf \u0111\u1ed9 s\u00e1ng t\u1ea1o sang sinh t\u1ed3n\u0001local result = World:isCreateRunMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u7531\u521b\u9020\u6a21\u5f0f\u8f6c\u7684\u751f\u5b58\') end"

    const/16 v2, 0xf4

    aput-object v1, v0, v2

    const-string v1, "World\u0001isCreativeMode\u0001World:isCreativeMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Whether it is creation mode\u0001\u0110\u00e2y c\u00f3 ph\u1ea3i l\u00e0 m\u1ed9t game s\u00e1ng t\u1ea1o\u0001local result = World:isCreativeMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u521b\u9020\u6a21\u5f0f\') end"

    const/16 v2, 0xf5

    aput-object v1, v0, v2

    const-string v1, "World\u0001isCustomGame\u0001World:isCustomGame()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Whether it is customize game\u0001N\u1ebfu l\u00e0 game t\u00f9y ch\u1ec9nh\u0001local result = World:isCustomGame() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6e38\u620f\u662f\u81ea\u5b9a\u4e49\u6e38\u620f\') end"

    const/16 v2, 0xf6

    aput-object v1, v0, v2

    const-string v1, "World\u0001isDaytime\u0001World:isDaytime()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Whether it is daytime\u0001Th\u1eddi ti\u1ebft v\u00e0o ban ng\u00e0y\u0001local isDayTx = World:isDaytime() if isDayTx~=ErrorCode.OK then --\u5982\u679c\u662f\u591c\u665a\u5219\u7ed9\u73a9\u5bb6\u53d1\u706b\u628a local itemId, itemCnt = 817, 2 --\u706b\u628aId\u548c\u6570\u91cf Player:gainItems(playerId, itemId, itemCnt, 1) end"

    const/16 v2, 0xf7

    aput-object v1, v0, v2

    const-string v1, "World\u0001isExtremityMode\u0001World:isExtremityMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Hardcore\u0001C\u1ef1c h\u1ea1n\u0001local result = World:isExtremityMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u6781\u9650\u6a21\u5f0f\') end"

    const/16 v2, 0xf8

    aput-object v1, v0, v2

    const-string v1, "World\u0001isFreeMode\u0001World:isFreeMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Survival mode - Free mode\u0001Ch\u1ebf \u0111\u1ed9 m\u1ea1o hi\u1ec3m - Ch\u1ebf \u0111\u1ed9 t\u1ef1 do\u0001local result = World:isFreeMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u5192\u9669\u6a21\u5f0f\u4e4b\u81ea\u7531\u6a21\u5f0f\') end"

    const/16 v2, 0xf9

    aput-object v1, v0, v2

    const-string v1, "World\u0001isGameMakerMode\u0001World:isGameMakerMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Customized edit mode\u0001Ch\u1ebf \u0111\u1ed9 t\u1ef1 ch\u1ec9nh s\u1eeda\u0001local result = World:isGameMakerMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u81ea\u5236\u73a9\u6cd5\u7684\u7f16\u8f91\u6a21\u5f0f\') end"

    const/16 v2, 0xfa

    aput-object v1, v0, v2

    const-string v1, "World\u0001isGameMakerRunMode\u0001World:isGameMakerRunMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Customized operate mode\u0001Ch\u1ebf \u0111\u1ed9 v\u1eadn h\u00e0nh t\u00f9y ch\u1ec9nh\u0001local result = World:isGameMakerRunMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u81ea\u5236\u73a9\u6cd5\u7684\u8fd0\u884c\u6a21\u5f0f\') end"

    const/16 v2, 0xfb

    aput-object v1, v0, v2

    const-string v1, "World\u0001isGodMode\u0001World:isGodMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Multiplayer creation mode or customized edit mode\u0001Ch\u1ebf \u0111\u1ed9 nhi\u1ec1u ng\u01b0\u1eddi ch\u01a1i ho\u1eb7c ch\u1ebf \u0111\u1ed9 t\u00f9y ch\u1ec9nh\u0001local result = World:isGodMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u591a\u4eba\u521b\u9020\u6a21\u5f0f\') end"

    const/16 v2, 0xfc

    aput-object v1, v0, v2

    const-string v1, "World\u0001isSurviveMode\u0001World:isSurviveMode()\u0001none\u0001ErrorCode.OK, result:boolean\u0001Single mode or Survival mode - Free mode\u0001Ch\u1ebf \u0111\u1ed9 ch\u01a1i \u0111\u01a1n - Ch\u1ebf \u0111\u1ed9 m\u1ea1o hi\u1ec3m - Ch\u1ebf \u0111\u1ed9 t\u1ef1 do\u0001local result = World:isSurviveMode() if result==ErrorCode.OK then print(\'\u5f53\u524d\u6a21\u5f0f\uff1a\u5355\u4eba\u751f\u5b58\u6a21\u5f0f\') end"

    const/16 v2, 0xfd

    aput-object v1, v0, v2

    const-string v1, "World\u0001randomOnePlayer\u0001World:randomOnePlayer(alive)\u0001alive:number0\u8868\u793a\u9635\u4ea1\uff0c1\u8868\u793a\u5b58\u6d3b\uff0c\u9ed8\u8ba4-1\u8868\u793a\u5168\u4f53\u73a9\u5bb6\u0001ErrorCode.OK, uin:number\u0001Random Player\u0001Ng\u01b0\u1eddi ch\u01a1i ng\u1eabu nhi\u00ean\u0001local aliveType = 1 --\u968f\u673a\u4e00\u4e2a\u5b58\u6d3b\u73a9\u5bb6Id local ret, playerId = World:randomOnePlayer(aliveType) if ret == ErrorCode.OK then print(\'Player ===>> \', playerId) end"

    const/16 v2, 0xfe

    aput-object v1, v0, v2

    const-string v1, "World\u0001setCameraEditState\u0001World:setCameraEditState(state)\u0001state:CameraEditState\u0001ErrorCode.OK\u0001Set view editing state\u0001C\u00e0i \u0111\u1eb7t ch\u1ec9nh s\u1eeda g\u00f3c nh\u00ecn\u0001--\u83b7\u53d6\u5230\u7684\u662fCamera\u5bf9\u8c61(userdata)\uff0c\u6b64\u5904\u8fd4\u56de\u7684\u662fnil local result, config = World:getCustomCameraConfig() if result==ErrorCode.OK and config~=nil then --\u81ea\u5b9a\u4e49\u89c6\u89d2 config:setOption(CAMERA_OPTION_INDEX_CONFIG_SET, CCG_FLATVIEW) end"

    const/16 v2, 0xff

    aput-object v1, v0, v2

    const-string v1, "World\u0001spawnCreature\u0001World:spawnCreature(x, y, z, actorid, num)\u0001x|y|z:number, mobid:number, num:number\u0001ErrorCdoe.OK, objids:tableobjid\u6570\u7ec4\u0001Generate creature(including monster, NPC, animals etc.)\u0001T\u1ea1o sinh v\u1eadt ( bao g\u1ed3m qu\u00e1i th\u00fa, NPC, \u0111\u1ed9ng v\u1eadt..v..v)\u0001local x, y, z = 6, 7, 8 local actorId, actorCnt = 3812, 2 --\u5c0f\u725b local ret, objids = World:spawnCreature(x, y, z, actorId, actorCnt) if objids and #objids>0 then for idx = 1, #objIds do --\u8bbe\u7f6e\u6c27\u6c14\u4f9d\u8d56 Creature:setOxygenNeed(objids[idx], true) end end"

    const/16 v2, 0x100

    aput-object v1, v0, v2

    const-string v1, "World\u0001spawnItem\u0001World:spawnItem(x, y, z, itemid, num)\u0001x|y|z:number, itemid:number, num:number\u0001ErrorCode.OK, objid:number\u0001Generate items in designate location\u0001T\u1ea1o c\u00f4ng c\u1ee5 \u1edf v\u1ecb tr\u00ed ch\u1ec9 \u0111\u1ecbnh\u0001local xPos, yPos, zPos = 5, 6, 7 local itemId, itemCnt = 15003, 30 --\u9053\u5177Id\u548c\u6570\u91cf local ret, objIds = World:spawnItem(xPos, yPos, zPos, itemId, itemCnt) if ret == ErrorCode.OK then print(\"Item[1]====>>>\", objIds[1]) end"

    const/16 v2, 0x101

    aput-object v1, v0, v2

    const-string v1, "World\u0001spawnProjectile\u0001World:spawnProjectile(shooter, itemid, x, y, z, dirx, diry, dirz, speed)\u0001shooter:number, itemid:number, x|y|z:number, dirx|diry|dirz:number, speed:number\u0001ErrorCode.OK\u0001Generate Projectile\u0001T\u1ea1o v\u1eadt n\u00e9m\u0001local result = World:spawnProjectile(shooter, itemid, x, y, z, dirx, diry, dirz, speed)"

    const/16 v2, 0x102

    aput-object v1, v0, v2

    sput-object v0, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    return-void
.end method
