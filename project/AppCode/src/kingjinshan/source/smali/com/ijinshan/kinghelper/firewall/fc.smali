.class final Lcom/ijinshan/kinghelper/firewall/fc;
.super Ljava/lang/Object;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 453
    packed-switch p2, :pswitch_data_0

    .line 501
    :goto_0
    return-void

    .line 455
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 459
    const-string v1, "PickListActivity1_action_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->c(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 464
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 466
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 468
    const-string v1, "PickListActivity1_action_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->c(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 474
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    const-string v1, "vnd.android.cursor.dir/sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 478
    const-string v1, "PickListActivity1_action_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->c(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v1, "PickListActivity1_ec_conversion_sms"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 485
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackAddActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 487
    const-string v1, "rule_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 491
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByAreasActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    const-string v1, "rule_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 497
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserBlackAddByNumbersActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 499
    const-string v1, "rule_type"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->b(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fc;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 453
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
