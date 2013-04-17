.class public Lky;
.super Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lky;->f:Z

    return-void
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;-><init>(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lky;->f:Z

    return-void
.end method
