.class final Larl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lari;


# direct methods
.method constructor <init>(Lari;)V
    .locals 0

    iput-object p1, p0, Larl;->a:Lari;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080117

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Larl;->a:Lari;

    invoke-static {v0}, Lari;->a(Lari;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Larl;->a:Lari;

    invoke-static {v0}, Lari;->e(Lari;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Larl;->a:Lari;

    new-instance v1, Lari$a;

    iget-object v2, p0, Larl;->a:Lari;

    iget-object v3, p0, Larl;->a:Lari;

    invoke-static {v3}, Lari;->f(Lari;)Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lari$a;-><init>(Lari;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lari;->a(Lari;Lari$a;)Lari$a;

    iget-object v0, p0, Larl;->a:Lari;

    invoke-static {v0}, Lari;->d(Lari;)Lari$a;

    move-result-object v0

    invoke-virtual {v0}, Lari$a;->start()V

    :cond_0
    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6719

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080116

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Larl;->a:Lari;

    invoke-static {v0}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La;->c(Landroid/content/Context;)V

    iget-object v0, p0, Larl;->a:Lari;

    invoke-static {v0}, Lari;->c(Lari;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/ui/activity/faceverify/AddUserInfoActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/faceverify/AddUserInfoActivity;->finish()V

    goto :goto_0
.end method
