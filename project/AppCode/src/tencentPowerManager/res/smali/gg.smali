.class public final Lgg;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lgh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0}, Lgh;->a()I

    move-result v0

    return v0
.end method

.method public final a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/DeviceInfo;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/GUIDInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0, p1, p2}, Lgh;->a(LQQPIM/DeviceInfo;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/SUI;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0, p1}, Lgh;->a(Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "LQQPIM/ClientVersionInfo;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "LQQPIM/ServerCmdInfo;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0, p1, p2}, Lgh;->a(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lgh;

    invoke-direct {v0}, Lgh;-><init>()V

    iput-object v0, p0, Lgg;->a:Lgh;

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {v0, p1}, Lgh;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lgg;->a:Lgh;

    invoke-virtual {p0, v0}, Lgg;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
