.class public final Lagp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkv;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V
    .locals 0

    iput-object p1, p0, Lagp;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iput-object p2, p0, Lagp;->a:Lkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lagp;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iget-object v1, p0, Lagp;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    const v2, 0x7f0b086d

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lagp;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lagp;->a:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lagp;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    goto :goto_0
.end method
