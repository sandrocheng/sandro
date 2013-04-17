.class final Lalo;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lkw;

.field private synthetic b:Lall;


# direct methods
.method constructor <init>(Lall;Lkw;)V
    .locals 0

    iput-object p1, p0, Lalo;->b:Lall;

    iput-object p2, p0, Lalo;->a:Lkw;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lalo;->a:Lkw;

    invoke-virtual {v0}, Lkw;->t()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Lft$a;

    invoke-direct {v0}, Lft$a;-><init>()V

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v1, v0, Lft$a;->a:J

    iget-object v3, p0, Lalo;->b:Lall;

    invoke-static {v3}, Lall;->a(Lall;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v3

    iget-object v4, p0, Lalo;->a:Lkw;

    invoke-virtual {v4}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->movePackageToExternal(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lft;->b(Lft$a;)V

    iget-wide v3, v0, Lft$a;->a:J

    sub-long v0, v3, v1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lalo;->a:Lkw;

    invoke-static {v0, v1}, La;->c(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkw;->o(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lalo;->b:Lall;

    invoke-static {v0}, Lall;->b(Lall;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lalo;->a:Lkw;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lalo;->b:Lall;

    invoke-static {v1}, Lall;->b(Lall;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lalo;->a:Lkw;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkw;->o(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lalo;->a:Lkw;

    invoke-virtual {v0}, Lkw;->t()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lalo;->b:Lall;

    invoke-static {v0}, Lall;->a(Lall;)Lcom/tencent/tmsecure/module/software/SoftwareManager;

    move-result-object v0

    iget-object v1, p0, Lalo;->a:Lkw;

    invoke-virtual {v1}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->movePackageToInteranl(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
