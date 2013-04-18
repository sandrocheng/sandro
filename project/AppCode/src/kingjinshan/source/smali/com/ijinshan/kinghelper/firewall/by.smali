.class final Lcom/ijinshan/kinghelper/firewall/by;
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
    .line 94
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/by;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/by;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->c(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/by;->a:Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;->a(Lcom/ijinshan/kinghelper/firewall/IPDialTypeActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    const v1, 0x7f080168

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 101
    return-void
.end method
