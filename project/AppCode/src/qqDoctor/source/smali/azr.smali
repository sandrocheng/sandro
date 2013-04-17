.class final Lazr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lazj;


# direct methods
.method constructor <init>(Lazj;)V
    .locals 0

    iput-object p1, p0, Lazr;->a:Lazj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lazr;->a:Lazj;

    invoke-static {v1}, Lazj;->j(Lazj;)Liu;

    move-result-object v1

    invoke-virtual {v1}, Liu;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lazr;->a:Lazj;

    invoke-static {v0}, Lazj;->j(Lazj;)Liu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Liu;->a(Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "guide_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lazr;->a:Lazj;

    invoke-virtual {v1}, Lazj;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    sget v2, Lfs;->b:I

    invoke-static {v1, v2, v0}, Lfs;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    return-void
.end method
