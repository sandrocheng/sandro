.class final Lcom/ijinshan/kinghelper/firewall/ct;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Lcom/ijinshan/kpref/n;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ct;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ijinshan/kpref/Preference;)Z
    .locals 3
    .parameter

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ct;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 308
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ct;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 309
    const/4 v0, 0x0

    return v0
.end method
