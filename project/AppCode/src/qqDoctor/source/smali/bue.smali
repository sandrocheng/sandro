.class public final Lbue;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

.field private final synthetic b:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;Ljava/util/Timer;)V
    .locals 0

    iput-object p1, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iput-object p2, p0, Lbue;->b:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lbue;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;
    .locals 1

    iget-object v0, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbue;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->b(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    new-instance v2, Lbuf;

    invoke-direct {v2, p0, v0, v0}, Lbuf;-><init>(Lbue;Landroid/os/Handler;Landroid/os/Handler;)V

    iput-object v2, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->c:Landroid/database/ContentObserver;

    iget-object v0, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-static {v1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->c(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$e;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lbue;->a:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    iget-object v3, v3, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
