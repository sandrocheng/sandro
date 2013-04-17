.class public abstract Lcom/tencent/tmsecure/module/aresengine/SystemCalllogFilter;
.super Lcom/tencent/tmsecure/module/aresengine/DataFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataFilter",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final BLACK_LIST:I = 0x4

.field public static final LAST_CALLS:I = 0x10

.field public static final LAST_OPERATION:I = 0x100

.field public static final NOTIFY_ADDING_BLACK_LIST:I = 0x40

.field public static final NOTIFY_SHORT_CALL:I = 0x80

.field public static final REMOVE_PRIVATE_CALL:I = 0x1

.field public static final STRANGER_CALL:I = 0x20

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

.method public abstract setCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
.end method

.method public abstract setLastCallLogDao(Lcom/tencent/tmsecure/module/aresengine/ILastCallLogDao;)V
.end method

.method public abstract setPhoneDeviceController(Lcom/tencent/tmsecure/module/aresengine/IPhoneDeviceController;)V
.end method

.method public abstract setPrivateCalllogDao(Lcom/tencent/tmsecure/module/aresengine/ICallLogDao;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/tmsecure/module/aresengine/ICallLogDao",
            "<+",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
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

.method public abstract setShortCallChecker(Lcom/tencent/tmsecure/module/aresengine/IShortCallChecker;)V
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
