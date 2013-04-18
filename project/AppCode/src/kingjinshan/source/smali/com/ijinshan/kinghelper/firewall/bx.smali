.class final Lcom/ijinshan/kinghelper/firewall/bx;
.super Ljava/lang/Object;
.source "IPDialTypeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bx;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bx;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    const v1, 0x7f0b00ad

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bx;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    const-class v2, Lcom/ijinshan/kinghelper/firewall/IpDialHeaderAddActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bx;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->startActivity(Landroid/content/Intent;)V

    .line 90
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bx;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->finish()V

    .line 91
    return-void
.end method
