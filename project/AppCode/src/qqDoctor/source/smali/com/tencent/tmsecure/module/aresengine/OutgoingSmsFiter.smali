.class public abstract Lcom/tencent/tmsecure/module/aresengine/OutgoingSmsFiter;
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
.field public static final REMOVE_PRIVATE_SMS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract setEntityConvertor(Lcom/tencent/tmsecure/module/aresengine/IEntityConverter;)V
.end method

.method public abstract setPrivateListDao(Lcom/tencent/tmsecure/module/aresengine/IContactDao;)V
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

.method public abstract setSystDao(Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;)V
.end method
