.class final Lbuo$a;
.super Lcom/tencent/tmsecure/module/aresengine/DataMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbuo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/tmsecure/module/aresengine/DataMonitor",
        "<",
        "Lcom/tencent/tmsecure/module/aresengine/SmsEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbvf;

.field private c:Lbuo$c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;-><init>()V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbuo$a;->a:Landroid/content/Context;

    new-instance v0, Lbuo$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbuo$c;-><init>(B)V

    iput-object v0, p0, Lbuo$a;->c:Lbuo$c;

    new-instance v0, Lbup;

    invoke-direct {v0, p0}, Lbup;-><init>(Lbuo$a;)V

    iput-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v1, p0, Lbuo$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbvf;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lbuo$a;)Lbuo$c;
    .locals 1

    iget-object v0, p0, Lbuo$a;->c:Lbuo$c;

    return-object v0
.end method


# virtual methods
.method final varargs a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;[Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lbuo$a;->notifyDataReached(Lcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v1, p0, Lbuo$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbvf;->b(Landroid/content/Context;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method protected final varargs synthetic onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p2, Lcom/tencent/tmsecure/module/aresengine/SmsEntity;

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/tmsecure/module/aresengine/DataMonitor;->onPostDataToFilter(ZLcom/tencent/tmsecure/module/aresengine/TelephonyEntity;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    aget-object v0, p3, v2

    instance-of v0, v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    aget-object v0, p3, v2

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    :cond_0
    return-void
.end method

.method public final setRegisterState(Z)V
    .locals 2

    iget-object v0, p0, Lbuo$a;->b:Lbvf;

    invoke-virtual {v0}, Lbvf;->a()Z

    move-result v0

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Lbup;

    invoke-direct {v0, p0}, Lbup;-><init>(Lbuo$a;)V

    iput-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v1, p0, Lbuo$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbvf;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbuo$a;->b:Lbvf;

    iget-object v1, p0, Lbuo$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lbvf;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
