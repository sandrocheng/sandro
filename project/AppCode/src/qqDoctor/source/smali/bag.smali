.class final Lbag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lazu;


# direct methods
.method constructor <init>(Lazu;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbag;->b:Lazu;

    iput-object p2, p0, Lbag;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x666e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbag;->b:Lazu;

    invoke-static {v0}, Lazu;->o(Lazu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lgu;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lft;->d()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lbag;->b:Lazu;

    invoke-static {v0}, Lazu;->p(Lazu;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lazu;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lbag;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbag;->b:Lazu;

    invoke-static {v0}, Lazu;->q(Lazu;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbag;->b:Lazu;

    invoke-static {v1}, Lazu;->r(Lazu;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04da

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
