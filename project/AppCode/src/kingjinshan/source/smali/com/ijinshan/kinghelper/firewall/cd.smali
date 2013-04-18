.class final Lcom/ijinshan/kinghelper/firewall/cd;
.super Ljava/lang/Object;
.source "IpDialNoUseNumberListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 219
    packed-switch p2, :pswitch_data_0

    .line 240
    :goto_0
    return-void

    .line 221
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-virtual {v1, v0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 227
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-virtual {v1, v0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 233
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    const-class v2, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 235
    const-string v1, "vnd.android.cursor.dir/sms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-virtual {v1, v0, v3}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 239
    :pswitch_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cd;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    const/16 v1, 0x2012

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->showDialog(I)V

    goto :goto_0

    .line 219
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
