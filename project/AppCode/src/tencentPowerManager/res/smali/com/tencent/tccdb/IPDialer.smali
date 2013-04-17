.class public Lcom/tencent/tccdb/IPDialer;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_MOBILE:I = 0x1

.field public static final TYPE_TELECOM:I = 0x3

.field public static final TYPE_UNICOM:I = 0x2


# instance fields
.field private object:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "location_libname"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, La;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {p1}, Lcom/tencent/tccdb/IPDialer;->newObject(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private static native changeToIPNum(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native deleteObject(I)V
.end method

.method private static native getConfig(ILjava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/tencent/tccdb/IPConfigSet;",
            ">;)I"
        }
    .end annotation
.end method

.method private static native initIPDialer(ILjava/lang/String;I)I
.end method

.method private static native newObject(Landroid/content/Context;)I
.end method

.method private static native setConfig(ILcom/tencent/tccdb/IPConfigSet;)I
.end method


# virtual methods
.method public changeToIPNum(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/IPDialer;->changeToIPNum(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {v0}, Lcom/tencent/tccdb/IPDialer;->deleteObject(I)V

    :cond_0
    return-void
.end method

.method public getConfig()Lcom/tencent/tccdb/IPConfigSet;
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget v1, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {v1, v0}, Lcom/tencent/tccdb/IPDialer;->getConfig(ILjava/util/concurrent/atomic/AtomicReference;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tccdb/IPConfigSet;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIPDialer(Ljava/lang/String;I)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {v0, p1, p2}, Lcom/tencent/tccdb/IPDialer;->initIPDialer(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/tencent/tccdb/IPConfigSet;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tccdb/IPDialer;->object:I

    invoke-static {v0, p1}, Lcom/tencent/tccdb/IPDialer;->setConfig(ILcom/tencent/tccdb/IPConfigSet;)I

    move-result v0

    return v0
.end method
