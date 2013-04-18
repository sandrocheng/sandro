.class final Lcom/ijinshan/kinghelper/firewall/cl;
.super Ljava/lang/Object;
.source "IpDialSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cl;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 809
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cl;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    const/16 v1, 0x3000

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->removeDialog(I)V

    .line 810
    return-void
.end method
