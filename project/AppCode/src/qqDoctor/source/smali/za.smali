.class public final Lza;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lza;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    new-instance v0, Lfv;

    iget-object v1, p0, Lza;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfv;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lfv;->a()V

    iget-object v0, p0, Lza;->a:Landroid/content/Context;

    invoke-static {v0}, Labk;->a(Landroid/content/Context;)Labk;

    move-result-object v0

    invoke-virtual {v0}, Labk;->b()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/SDKUtil;->getSDKVersion()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->F(Z)V

    const-class v0, Labp;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    :cond_1
    :goto_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->by()Z

    move-result v0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->di()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    iget-object v2, p0, Lza;->a:Landroid/content/Context;

    new-instance v3, Lzb;

    invoke-direct {v3, p0}, Lzb;-><init>(Lza;)V

    invoke-static {v2, v0, v1, v3}, Lxi;->a(Landroid/content/Context;ZZLxi$a;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bK()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lza;->a:Landroid/content/Context;

    const-class v2, Labp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "open_screenshot_service_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Labp;

    invoke-direct {v1}, Labp;-><init>()V

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    goto :goto_0

    :cond_5
    const-class v0, Labp;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->stopService(Ljava/lang/Class;)Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lih;->a(Landroid/content/Context;)Lih;

    move-result-object v0

    invoke-virtual {v0}, Lih;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lza;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La;->a(Landroid/content/Context;Lxi$a;)V

    goto :goto_1
.end method
