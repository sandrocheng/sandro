.class final Lbwo$a;
.super Lcom/tencent/tmsecure/common/BaseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbwo$a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Looper;

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:Lbwo$b;

.field private synthetic f:Lbwo;


# direct methods
.method private constructor <init>(Lbwo;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lbwo$a;->f:Lbwo;

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    new-instance v0, Lbwo$a$a;

    invoke-direct {v0, p0, v1}, Lbwo$a$a;-><init>(Lbwo$a;B)V

    iput-object v0, p0, Lbwo$a;->d:Ljava/lang/Runnable;

    new-instance v0, Lbwo$b;

    invoke-direct {v0, p1, v1}, Lbwo$b;-><init>(Lbwo;B)V

    iput-object v0, p0, Lbwo$a;->e:Lbwo$b;

    return-void
.end method

.method synthetic constructor <init>(Lbwo;B)V
    .locals 0

    invoke-direct {p0, p1}, Lbwo$a;-><init>(Lbwo;)V

    return-void
.end method

.method static synthetic a(Lbwo$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbwo$a;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lbwo$a;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbwo$a;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lbwo$a;)Lbwo;
    .locals 1

    iget-object v0, p0, Lbwo$a;->f:Lbwo;

    return-object v0
.end method


# virtual methods
.method public final onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwo$a;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lbwo$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lbwo$a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lbwo$a;->b:Landroid/os/Looper;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbwo$a;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lbwo$a;->c:Landroid/os/Handler;

    iget-object v0, p0, Lbwo$a;->e:Lbwo$b;

    iget-object v1, p0, Lbwo$a;->f:Lbwo;

    invoke-static {v1}, Lbwo;->e(Lbwo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbwo$b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final onDestory()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Lbwo$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lbwo$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbwo$a;->b:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    iget-object v0, p0, Lbwo$a;->e:Lbwo$b;

    iget-object v1, p0, Lbwo$a;->f:Lbwo;

    invoke-static {v1}, Lbwo;->e(Lbwo;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbwo$b;->b(Landroid/content/Context;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    iget-object v0, p0, Lbwo$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lbwo$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbwo$a;->c:Landroid/os/Handler;

    iget-object v1, p0, Lbwo$a;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
