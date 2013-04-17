.class final Lvb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Luo;


# direct methods
.method constructor <init>(Luo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lvb;->c:Luo;

    iput-object p2, p0, Lvb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput-object p3, p0, Lvb;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lvb;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6664

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Lkw;

    invoke-direct {v0}, Lkw;-><init>()V

    const-string v1, "com.tencent.qqphonebook"

    invoke-virtual {v0, v1}, Lkw;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lvb;->c:Luo;

    invoke-static {v1}, Luo;->n(Luo;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkw;->setAppName(Ljava/lang/String;)V

    iget-object v1, p0, Lvb;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lkw;->d(Ljava/lang/String;)V

    new-instance v1, Lkv;

    invoke-direct {v1, v0}, Lkv;-><init>(Lkw;)V

    invoke-static {v1}, Lof;->a(Lkv;)V

    iget-object v0, p0, Lvb;->c:Luo;

    new-instance v2, Lcom/tencent/tmsecure/common/BaseServiceConnection;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-direct {v2, v3}, Lcom/tencent/tmsecure/common/BaseServiceConnection;-><init>(Ljava/lang/Class;)V

    invoke-static {v0, v2}, Luo;->a(Luo;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Lcom/tencent/tmsecure/common/BaseServiceConnection;

    new-instance v0, Lof;

    invoke-direct {v0}, Lof;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    const-class v0, Lof;

    iget-object v2, p0, Lvb;->c:Luo;

    invoke-static {v2}, Luo;->o(Luo;)Lcom/tencent/tmsecure/common/BaseServiceConnection;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmsecure/common/TMSService;->bindService(Ljava/lang/Class;Lcom/tencent/tmsecure/common/BaseServiceConnection;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lvb;->c:Luo;

    invoke-static {v0}, Luo;->n(Luo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lvb;->c:Luo;

    invoke-static {v2}, Luo;->n(Luo;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
