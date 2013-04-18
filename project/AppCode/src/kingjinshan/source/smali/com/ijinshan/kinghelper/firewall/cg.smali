.class final Lcom/ijinshan/kinghelper/firewall/cg;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cg;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cg;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialSettingPopActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/cg;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
