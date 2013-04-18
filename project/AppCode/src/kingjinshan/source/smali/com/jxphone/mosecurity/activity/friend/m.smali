.class final Lcom/jxphone/mosecurity/activity/friend/m;
.super Lcom/jxphone/mosecurity/activity/s;
.source "FriendActivity.java"


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/j;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/j;)V
    .locals 0
    .parameter

    .prologue
    .line 454
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/m;->a:Lcom/jxphone/mosecurity/activity/friend/j;

    invoke-direct {p0}, Lcom/jxphone/mosecurity/activity/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 460
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->E()Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->F()Lcom/jxphone/mosecurity/c/b;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/m;->a:Lcom/jxphone/mosecurity/activity/friend/j;

    iget-object v0, v0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->h(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v0

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->G()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/b;)Z

    move-result v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    const v0, 0x7f0b05f7

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/m;->a:Lcom/jxphone/mosecurity/activity/friend/j;

    iget-object v1, v1, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 483
    :goto_0
    return-void

    .line 478
    :cond_0
    const v0, 0x7f0b05f9

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
