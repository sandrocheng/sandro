.class public final Lago;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lkv;

.field private synthetic b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;Lkv;)V
    .locals 0

    iput-object p1, p0, Lago;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    iput-object p2, p0, Lago;->a:Lkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lago;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->g(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lago;->a:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->pauseTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lago;->b:Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;->h(Lcom/tencent/qqpimsecure/ui/activity/market/WeekRecDialog;)V

    return-void
.end method
