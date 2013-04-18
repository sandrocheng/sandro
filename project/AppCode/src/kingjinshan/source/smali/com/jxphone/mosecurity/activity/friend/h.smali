.class final Lcom/jxphone/mosecurity/activity/friend/h;
.super Ljava/lang/Object;
.source "FriendActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 333
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 337
    packed-switch p2, :pswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 339
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->m()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 344
    const-string v1, "id"

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->n()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 345
    const-string v1, "address"

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->o()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v1, v2, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 351
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->p()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->q()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->r()Lcom/jxphone/mosecurity/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    new-instance v4, Lcom/jxphone/mosecurity/activity/friend/i;

    invoke-direct {v4, p0}, Lcom/jxphone/mosecurity/activity/friend/i;-><init>(Lcom/jxphone/mosecurity/activity/friend/h;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/activity/s;)V

    goto :goto_0

    .line 386
    :pswitch_3
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/h;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->v()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V

    goto :goto_0

    .line 337
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
