.class final Lauq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Latz;

.field private synthetic b:I


# direct methods
.method constructor <init>(Latz;I)V
    .locals 0

    iput-object p1, p0, Lauq;->a:Latz;

    iput p2, p0, Lauq;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lauq;->a:Latz;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lauq;->a:Latz;

    invoke-static {v2}, Latz;->q(Latz;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Latz;->a(Latz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const/16 v0, 0x3ed

    iget v1, p0, Lauq;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0045

    new-instance v2, Laur;

    invoke-direct {v2, p0}, Laur;-><init>(Lauq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0033

    new-instance v2, Laus;

    invoke-direct {v2, p0}, Laus;-><init>(Lauq;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void

    :cond_0
    iget-object v0, p0, Lauq;->a:Latz;

    invoke-static {v0}, Latz;->r(Latz;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0
.end method
