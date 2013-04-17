.class public Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;
.super Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;


# instance fields
.field public date:J

.field public duration:J

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)V

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->date:J

    iget v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    iput v0, p0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->type:I

    iget-wide v0, p1, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    iput-wide v0, p0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;->duration:J

    return-void
.end method
