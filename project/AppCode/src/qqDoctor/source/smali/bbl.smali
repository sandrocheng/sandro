.class final Lbbl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbbk;

.field private synthetic b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method constructor <init>(Lbbk;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbbl;->a:Lbbk;

    iput-object p2, p0, Lbbl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbbm;

    invoke-direct {v1, p0}, Lbbm;-><init>(Lbbl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->c(Lbbk;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->d(Lbbk;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lbbl;->a:Lbbk;

    invoke-static {v0}, Lbbk;->e(Lbbk;)Lbbo;

    move-result-object v0

    invoke-virtual {v0}, Lbbo;->a()V

    iget-object v0, p0, Lbbl;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
