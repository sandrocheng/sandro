.class public final Lfu;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lfv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lfw;)V
    .locals 2

    invoke-static {}, Lfu;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lfu;->a:Lfv;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1, p2}, Lfv;->a(Ljava/lang/String;ILfw;)V

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lfv;

    invoke-direct {v0}, Lfv;-><init>()V

    iput-object v0, p0, Lfu;->a:Lfv;

    iget-object v0, p0, Lfu;->a:Lfv;

    invoke-virtual {v0, p1}, Lfv;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lfu;->a:Lfv;

    invoke-virtual {p0, v0}, Lfu;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
