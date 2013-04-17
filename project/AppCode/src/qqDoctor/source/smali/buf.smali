.class final Lbuf;
.super Landroid/database/ContentObserver;


# instance fields
.field private synthetic a:Lbue;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lbue;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lbuf;->a:Lbue;

    iput-object p3, p0, Lbuf;->b:Landroid/os/Handler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lbuf;->a:Lbue;

    invoke-static {v0}, Lbue;->a(Lbue;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    move-result-object v0

    iget v1, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->e:I

    iget-object v0, p0, Lbuf;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbuf;->a:Lbue;

    invoke-static {v1}, Lbue;->a(Lbue;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lbuf;->b:Landroid/os/Handler;

    iget-object v1, p0, Lbuf;->a:Lbue;

    invoke-static {v1}, Lbue;->a(Lbue;)Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
