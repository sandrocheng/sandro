.class final Lcom/jxphone/mosecurity/activity/friend/q;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/c/b;

.field final synthetic b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 599
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 603
    packed-switch p2, :pswitch_data_0

    .line 641
    :goto_0
    return-void

    .line 605
    :pswitch_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 606
    const-string v1, "id"

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 607
    const-string v1, "address"

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v1, v2, v0}, Lcom/keniu/security/util/af;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/util/af;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :pswitch_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/q;->a:Lcom/jxphone/mosecurity/c/b;

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;Lcom/jxphone/mosecurity/c/b;)V

    goto :goto_0

    .line 624
    :pswitch_3
    new-instance v0, Lcom/keniu/security/util/aq;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/q;->b:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 626
    const v1, 0x7f0b050f

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 627
    const v1, 0x7f0b0674

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/aq;->b(I)Lcom/keniu/security/util/aq;

    .line 628
    const v1, 0x104000a

    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/r;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/r;-><init>(Lcom/jxphone/mosecurity/activity/friend/q;)V

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 638
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 640
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    goto :goto_0

    .line 603
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
