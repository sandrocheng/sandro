.class final Lcom/keniu/security/sync/ui/f;
.super Ljava/lang/Object;
.source "DialogAct.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/sync/ui/DialogAct;


# direct methods
.method constructor <init>(Lcom/keniu/security/sync/ui/DialogAct;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    .line 117
    invoke-static {}, Lcom/keniu/security/sync/k;->a()Lcom/keniu/security/sync/k;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/k;->a(Landroid/content/Context;)V

    .line 119
    const-string v1, "last_imsi_for_sim_change"

    iget-object v2, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v2}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/keniu/security/util/av;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 139
    :goto_0
    :pswitch_0
    return-void

    .line 122
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v3, v5

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/keniu/security/traffic/y;->a()V

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    iget-object v1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v1, "context"

    const-string v2, "Traffic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v1, "fromSIMChange"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/ui/DialogAct;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->finish()V

    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dc;->c()V

    .line 131
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1}, Lcom/keniu/security/sync/ui/DialogAct;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string v1, "fromSIMChange"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v1, v0}, Lcom/keniu/security/sync/ui/DialogAct;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/sync/ui/f;->a:Lcom/keniu/security/sync/ui/DialogAct;

    invoke-virtual {v0}, Lcom/keniu/security/sync/ui/DialogAct;->finish()V

    goto/16 :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x7f0802e6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 123
    :array_0
    .array-data 0x4
        0xcbt 0x3t 0xbt 0x7ft
        0xcct 0x3t 0xbt 0x7ft
        0xcdt 0x3t 0xbt 0x7ft
        0xcet 0x3t 0xbt 0x7ft
        0xc3t 0x3t 0xbt 0x7ft
        0xc7t 0x3t 0xbt 0x7ft
        0xc8t 0x3t 0xbt 0x7ft
        0xc9t 0x3t 0xbt 0x7ft
        0xc8t 0x3t 0xbt 0x7ft
    .end array-data
.end method
