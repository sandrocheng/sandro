.class public abstract Lcom/tencent/tmsecure/module/aresengine/AbsSysDao;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(Ljava/lang/String;)Z
.end method

.method public abstract getAllCallLog()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllContact()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastCallLog()Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
.end method

.method public abstract getLastInBoxMms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getLastInBoxSms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getLastOutBoxMms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getLastOutBoxSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getLastSentMms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getLastSentSms(I)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getMms(II)Lcom/tencent/tmsecure/module/aresengine/SmsEntity;
.end method

.method public abstract getSimContact()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/aresengine/ContactEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Landroid/net/Uri;
.end method

.method public abstract remove(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)Z
.end method

.method public abstract remove(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
.end method

.method public abstract supportThisPhone()Z
.end method
