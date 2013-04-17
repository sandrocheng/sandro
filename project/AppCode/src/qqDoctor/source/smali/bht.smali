.class final Lbht;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lbhn;


# direct methods
.method constructor <init>(Lbhn;Z)V
    .locals 0

    iput-object p1, p0, Lbht;->b:Lbhn;

    iput-boolean p2, p0, Lbht;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-boolean v0, p0, Lbht;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbht;->b:Lbhn;

    invoke-static {v0}, Lbhn;->d(Lbhn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lbht;->b:Lbhn;

    invoke-static {v1}, Lbhn;->e(Lbhn;)I

    move-result v1

    iget-object v2, p0, Lbht;->b:Lbhn;

    invoke-static {v2}, Lbhn;->f(Lbhn;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacySafeActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x2

    invoke-static {v3, v1, v4, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbht;->b:Lbhn;

    invoke-virtual {v0}, Lbhn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    return-void
.end method
