.class final Lcom/jxphone/mosecurity/activity/friend/j;
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
    .line 394
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 398
    packed-switch p2, :pswitch_data_0

    .line 491
    :goto_0
    return-void

    .line 400
    :pswitch_0
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->w()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 404
    :pswitch_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    const-string v1, "id"

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->x()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 406
    const-string v1, "address"

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->y()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v1, v2, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 412
    :pswitch_2
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/k;

    check-cast p1, Lcom/keniu/security/util/ap;

    invoke-virtual {p1}, Lcom/keniu/security/util/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/jxphone/mosecurity/activity/t;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {v2, v3}, Lcom/jxphone/mosecurity/activity/t;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/k;-><init>(Lcom/jxphone/mosecurity/activity/friend/j;Landroid/content/Context;Landroid/os/Handler;)V

    .line 424
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/n;->d()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->f(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->z()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/jxphone/mosecurity/logic/a/d;->d(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V

    goto :goto_0

    .line 432
    :pswitch_3
    new-instance v0, Lcom/jxphone/mosecurity/activity/friend/l;

    check-cast p1, Lcom/keniu/security/util/ap;

    invoke-virtual {p1}, Lcom/keniu/security/util/ap;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/jxphone/mosecurity/activity/t;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-direct {v2, v3}, Lcom/jxphone/mosecurity/activity/t;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/jxphone/mosecurity/activity/friend/l;-><init>(Lcom/jxphone/mosecurity/activity/friend/j;Landroid/content/Context;Landroid/os/Handler;)V

    .line 444
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/d/n;->d()Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->g(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;Z)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->A()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V

    goto/16 :goto_0

    .line 452
    :pswitch_4
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->B()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->C()Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->D()Lcom/jxphone/mosecurity/c/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v3

    new-instance v4, Lcom/jxphone/mosecurity/activity/friend/m;

    invoke-direct {v4, p0}, Lcom/jxphone/mosecurity/activity/friend/m;-><init>(Lcom/jxphone/mosecurity/activity/friend/j;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->a(Ljava/lang/String;Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/activity/s;)V

    goto/16 :goto_0

    .line 487
    :pswitch_5
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/j;->a:Lcom/jxphone/mosecurity/activity/friend/FriendActivity;

    invoke-static {}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->H()Lcom/jxphone/mosecurity/c/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendActivity;->c(Lcom/jxphone/mosecurity/activity/friend/FriendActivity;Lcom/jxphone/mosecurity/c/b;)V

    goto/16 :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
