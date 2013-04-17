.class final Laoz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laou;


# direct methods
.method constructor <init>(Laou;)V
    .locals 0

    iput-object p1, p0, Laoz;->a:Laou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->C(Laou;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->c(Laou;)Laou$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Laou$a;->a:J

    iget-object v0, p0, Laoz;->a:Laou;

    iget-object v1, p0, Laoz;->a:Laou;

    invoke-static {v1}, Laou;->c(Laou;)Laou$a;

    move-result-object v1

    invoke-static {v0, v1}, Laou;->b(Laou;Laou$a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laoz;->a:Laou;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Laou;->a(Laou;Z)Z

    :cond_2
    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->D(Laou;)Ljava/lang/Thread;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->E(Laou;)Z

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->F(Laou;)I

    iget-object v0, p0, Laoz;->a:Laou;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Laoz;->a:Laou;

    invoke-static {v2}, Laou;->G(Laou;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Laou;->a(Laou;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0abd

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0abe

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    const v1, 0x7f0b0033

    new-instance v2, Lapa;

    invoke-direct {v2, p0}, Lapa;-><init>(Laoz;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->b(Laou;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Laoz;->a:Laou;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Laoz;->a:Laou;

    invoke-static {v2}, Laou;->H(Laou;)Ljava/lang/Runnable;

    move-result-object v2

    const-string v3, "MicroBlogShareThread"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0, v1}, Laou;->a(Laou;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Laoz;->a:Laou;

    invoke-static {v0}, Laou;->D(Laou;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
