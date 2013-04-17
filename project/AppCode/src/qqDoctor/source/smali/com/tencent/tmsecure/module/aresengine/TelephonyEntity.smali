.class public abstract Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;
.super Lcom/tencent/tmsecure/common/BaseEntity;


# instance fields
.field public name:Ljava/lang/String;

.field public phonenum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseEntity;-><init>()V

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->id:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->id:I

    iget-object v0, p1, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    return-void
.end method
