.class final Lcom/ijinshan/kinghelper/firewall/at;
.super Ljava/lang/Object;
.source "FirewallSmsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 112
    packed-switch p2, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 114
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 118
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_report_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 123
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    const-string v1, "vnd.android.cursor.dir/sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "PickListActivity1_action_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 127
    const-string v1, "PickListActivity1_action_type"

    const-string v2, "PickListActivity1_report_action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 133
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/UserReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/at;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
