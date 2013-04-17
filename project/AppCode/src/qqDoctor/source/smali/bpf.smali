.class final Lbpf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbpe;


# direct methods
.method constructor <init>(Lbpe;)V
    .locals 0

    iput-object p1, p0, Lbpf;->a:Lbpe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->k(Lbot;)Lcf;

    move-result-object v0

    invoke-interface {v0}, Lcf;->f()V

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->stopProgressAnimation()V

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    iget-object v0, p0, Lbpf;->a:Lbpe;

    iget-object v0, v0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->z(Lbot;)Z

    return-void
.end method
