.class final Lta;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lsz;


# direct methods
.method constructor <init>(Lsz;)V
    .locals 0

    iput-object p1, p0, Lta;->a:Lsz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/16 v3, 0x8

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    const/4 v1, 0x0

    iput-object v1, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lta;->a:Lsz;

    iget-object v2, v2, Lsz;->a:Lsy;

    iget-object v2, v2, Lsy;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-boolean v0, v0, Lsy;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0200

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0201

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v1, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-boolean v0, v0, Lsy;->i:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0b0202

    :goto_1
    new-instance v2, Ltb;

    invoke-direct {v2, p0}, Ltb;-><init>(Lta;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Ltc;

    invoke-direct {v2, p0}, Ltc;-><init>(Lta;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lta;->a:Lsz;

    iget-object v0, v0, Lsz;->a:Lsy;

    iget-object v0, v0, Lsy;->h:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0b0208

    goto :goto_1
.end method
