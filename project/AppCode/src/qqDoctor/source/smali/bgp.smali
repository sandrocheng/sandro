.class final Lbgp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lbgo;


# direct methods
.method constructor <init>(Lbgo;)V
    .locals 0

    iput-object p1, p0, Lbgp;->a:Lbgo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lbgp;->a:Lbgo;

    invoke-static {v0}, Lbgo;->a(Lbgo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbgp;->a:Lbgo;

    invoke-static {v1}, Lbgo;->b(Lbgo;)I

    move-result v1

    iget-object v2, p0, Lbgp;->a:Lbgo;

    invoke-static {v2}, Lbgo;->c(Lbgo;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/VerifyPrivacyPasswordActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, -0x1

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbgp;->a:Lbgo;

    invoke-virtual {v0}, Lbgo;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    invoke-virtual {v2}, Lho;->ci()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgp;->a:Lbgo;

    invoke-static {v0}, Lbgo;->d(Lbgo;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbgp;->a:Lbgo;

    invoke-static {v1}, Lbgo;->b(Lbgo;)I

    move-result v1

    iget-object v2, p0, Lbgp;->a:Lbgo;

    invoke-static {v2}, Lbgo;->c(Lbgo;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacySafeActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbgp;->a:Lbgo;

    invoke-virtual {v0}, Lbgo;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method
