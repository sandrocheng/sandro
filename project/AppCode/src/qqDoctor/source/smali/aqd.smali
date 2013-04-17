.class final Laqd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:I

.field private synthetic c:Lkv;

.field private synthetic d:Laqa;


# direct methods
.method constructor <init>(Laqa;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;ILkv;)V
    .locals 0

    iput-object p1, p0, Laqd;->d:Laqa;

    iput-object p2, p0, Laqd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iput p3, p0, Laqd;->b:I

    iput-object p4, p0, Laqd;->c:Lkv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Laqd;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget v0, p0, Laqd;->b:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Laqd;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Laqd;->d:Laqa;

    iget-object v1, p0, Laqd;->c:Lkv;

    invoke-static {v0, v1}, Laqa;->a(Laqa;Lkv;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Laqd;->b:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Laqd;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Laqd;->d:Laqa;

    invoke-static {v0}, Laqa;->a(Laqa;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    iget-object v1, p0, Laqd;->c:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->continueTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    goto :goto_0

    :cond_4
    iget v0, p0, Laqd;->b:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Laqd;->c:Lkv;

    invoke-static {v0}, Lof;->a(Lkv;)V

    iget-object v0, p0, Laqd;->d:Laqa;

    invoke-static {v0}, Laqa;->a(Laqa;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    iget-object v1, p0, Laqd;->c:Lkv;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->startTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x672e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0
.end method
