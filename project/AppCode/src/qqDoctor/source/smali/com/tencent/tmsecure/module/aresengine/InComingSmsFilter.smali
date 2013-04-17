.class public abstract Lcom/tencent/tmsecure/module/aresengine/InComingSmsFilter;
.super Lcom/tencent/tmsecure/module/aresengine/DataFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final BLACK_LIST:I = 0x4

.field public static final INTELLIGENT_CHECKING:I = 0x40

.field public static final KEY_WORKDS:I = 0x20

.field public static final LAST_CALLS:I = 0x10

.field public static final MATCH_NULL:I = -0x1

.field public static final REMOVE_PRIVATE_SMS:I = 0x1

.field public static final SPECIAL_SMS:I = 0x100

.field public static final STRANGER_SMS:I = 0x80

.field public static final SYS_CONTACT:I = 0x8

.field public static final WHITE_LIST:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setBlacklistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
.end method

.method public abstract setIntelligentSmsHandler(Lcom/tencent/tmsecure/module/aresengine/IntelligentSmsHandler;)V
.end method

.method public abstract setKeywordDao(Lcom/tencent/tmsecure/module/aresengine/IKeyWordDao;)V
.end method

.method public abstract setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
.end method

.method public abstract setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
.end method

.method public abstract setPrivateSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPrivatelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSmsDao(Lcom/tencent/tmsecure/module/aresengine/ISmsDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ISmsDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSpecialSmsChecker(Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;)V
.end method

.method public abstract setSysDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
.end method

.method public abstract setWhitelistDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/IContactDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;)V"
        }
    .end annotation
.end method
