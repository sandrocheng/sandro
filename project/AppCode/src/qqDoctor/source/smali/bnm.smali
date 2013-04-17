.class final Lbnm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbnd;


# direct methods
.method constructor <init>(Lbnd;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbnm;->b:Lbnd;

    iput-object p2, p0, Lbnm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lbnm;->b:Lbnd;

    invoke-static {v0}, Lbnd;->w(Lbnd;)Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;

    move-result-object v0

    iget-object v1, p0, Lbnm;->b:Lbnd;

    invoke-static {v1}, Lbnd;->n(Lbnd;)Lkv;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/networkload/DownloadServiceBinder;->deleteTask(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;Z)V

    iget-object v0, p0, Lbnm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
