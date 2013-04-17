.class final Lbks;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbkn;


# direct methods
.method constructor <init>(Lbkn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbks;->b:Lbkn;

    iput-object p2, p0, Lbks;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v0

    invoke-virtual {v0}, Lnp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbks;->b:Lbkn;

    invoke-static {v0}, Lbkn;->x(Lbkn;)V

    :goto_0
    iget-object v0, p0, Lbks;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lbks;->b:Lbkn;

    invoke-static {v0}, Lbkn;->y(Lbkn;)V

    iget-object v0, p0, Lbks;->b:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbks;->b:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbks;->b:Lbkn;

    invoke-static {v1}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b047d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbks;->b:Lbkn;

    invoke-static {v0}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbks;->b:Lbkn;

    invoke-static {v1}, Lbkn;->b(Lbkn;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b07f5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
