.class final Labt;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic a:Labp;


# direct methods
.method constructor <init>(Labp;)V
    .locals 0

    iput-object p1, p0, Labt;->a:Labp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "shake_screenshot_action"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labt;->a:Labp;

    invoke-static {v0}, Labp;->c(Labp;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bK()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Labt;->a:Labp;

    invoke-static {v0}, Labp;->c(Labp;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->bM()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-boolean v0, Labp;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Labt;->a:Labp;

    invoke-static {v0}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    sput-boolean v2, Labp;->d:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Labt;->a:Labp;

    invoke-static {v1}, Labp;->a(Labp;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Labp;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "shake_screenshot_action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Labp;

    invoke-direct {v1}, Labp;-><init>()V

    invoke-static {v1, v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    :cond_0
    return-void
.end method
