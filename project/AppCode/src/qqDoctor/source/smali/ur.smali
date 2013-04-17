.class final Lur;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private synthetic a:Luo;


# direct methods
.method constructor <init>(Luo;)V
    .locals 0

    iput-object p1, p0, Lur;->a:Luo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lur;->a:Luo;

    invoke-static {v0}, Luo;->p(Luo;)Lho;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->J(Ljava/lang/String;)V

    iget-object v0, p0, Lur;->a:Luo;

    invoke-static {v0}, Luo;->p(Luo;)Lho;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->H(Ljava/lang/String;)V

    iget-object v0, p0, Lur;->a:Luo;

    invoke-static {v0}, Luo;->p(Luo;)Lho;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lho;->I(Ljava/lang/String;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6665

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lur;->a:Luo;

    invoke-static {v0}, Luo;->n(Luo;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lur;->a:Luo;

    invoke-static {v2}, Luo;->n(Luo;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/InterceptCenterActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
