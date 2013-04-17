.class final Lbfm;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private synthetic b:Lbfg;


# direct methods
.method constructor <init>(Lbfg;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbfm;->b:Lbfg;

    iput-object p2, p0, Lbfm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6714

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbfm;->b:Lbfg;

    invoke-static {v0}, Lbfg;->g(Lbfg;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->V(Z)V

    iget-object v0, p0, Lbfm;->b:Lbfg;

    invoke-static {v0}, Lbfg;->g(Lbfg;)Lho;

    move-result-object v0

    invoke-virtual {v0, v2}, Lho;->U(Z)V

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbfm;->b:Lbfg;

    invoke-static {v0}, Lbfg;->f(Lbfg;)Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbfm;->b:Lbfg;

    invoke-static {v0}, Lbfg;->f(Lbfg;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbfm;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    return-void
.end method
