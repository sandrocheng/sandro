.class public Lqb;
.super Lcom/tencent/tmsecure/common/BaseService;

# interfaces
.implements Labv$b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseService;-><init>()V

    return-void
.end method


# virtual methods
.method public currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object v0, p0, Lqb;->a:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpx;->a(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void
.end method

.method public onBind()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onCreate(Landroid/content/Context;)V

    iput-object p1, p0, Lqb;->a:Landroid/content/Context;

    return-void
.end method

.method public onDestory()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/tmsecure/common/BaseService;->onDestory()V

    iget-object v0, p0, Lqb;->a:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->c()V

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    invoke-virtual {v0, p0}, Labv;->b(Labv$b;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/common/BaseService;->onStart(Landroid/content/Intent;)V

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    invoke-virtual {v0, p0}, Labv;->a(Labv$b;)V

    iget-object v0, p0, Lqb;->a:Landroid/content/Context;

    invoke-static {v0}, Lpx;->a(Landroid/content/Context;)Lpx;

    move-result-object v0

    invoke-virtual {v0}, Lpx;->a()V

    return-void
.end method
