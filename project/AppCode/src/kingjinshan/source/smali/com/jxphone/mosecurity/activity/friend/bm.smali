.class final Lcom/jxphone/mosecurity/activity/friend/bm;
.super Ljava/lang/Object;
.source "PeopleSmsLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 277
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->i(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->h(Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jxphone/mosecurity/c/l;

    .line 279
    packed-switch p2, :pswitch_data_0

    .line 317
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;->a(Lcom/jxphone/mosecurity/c/l;)V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/util/af;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/l;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/keniu/security/util/af;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    const v1, 0x7f0b024c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 299
    :pswitch_3
    new-instance v1, Lcom/jxphone/mosecurity/activity/friend/bn;

    invoke-direct {v1, p0, v0}, Lcom/jxphone/mosecurity/activity/friend/bn;-><init>(Lcom/jxphone/mosecurity/activity/friend/bm;Lcom/jxphone/mosecurity/c/l;)V

    .line 308
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/bm;->a:Lcom/jxphone/mosecurity/activity/friend/PeopleSmsLogActivity;

    const v2, 0x7f0b0675

    invoke-static {v0, v2, v1}, Lcom/keniu/security/util/k;->a(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/keniu/security/util/aq;->d()Lcom/keniu/security/util/ap;

    goto :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
