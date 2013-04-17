.class final Lbpe;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbot;

.field private synthetic b:I


# direct methods
.method constructor <init>(Lbot;I)V
    .locals 0

    iput-object p1, p0, Lbpe;->a:Lbot;

    iput p2, p0, Lbpe;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x2

    iget-object v0, p0, Lbpe;->a:Lbot;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbpe;->a:Lbot;

    invoke-static {v2}, Lbot;->y(Lbot;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lbot;->a(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    const/16 v0, 0x3e9

    iget v1, p0, Lbpe;->b:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3ea

    iget v1, p0, Lbpe;->b:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00f7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0045

    new-instance v2, Lbpf;

    invoke-direct {v2, p0}, Lbpf;-><init>(Lbpe;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0033

    new-instance v2, Lbpg;

    invoke-direct {v2, p0}, Lbpg;-><init>(Lbpe;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void

    :cond_1
    iget-object v0, p0, Lbpe;->a:Lbot;

    invoke-static {v0}, Lbot;->r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0
.end method
