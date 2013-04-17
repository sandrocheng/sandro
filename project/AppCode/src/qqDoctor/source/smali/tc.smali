.class final Ltc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lta;


# direct methods
.method constructor <init>(Lta;)V
    .locals 0

    iput-object p1, p0, Ltc;->a:Lta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iput-object v2, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lsy;->j:Z

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;->stopProgressAnimation()V

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Ltc;->a:Lta;

    iget-object v0, v0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iput-object v2, v0, Lsy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    return-void
.end method
