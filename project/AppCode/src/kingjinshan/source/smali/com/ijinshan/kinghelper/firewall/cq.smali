.class final Lcom/ijinshan/kinghelper/firewall/cq;
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
    .line 908
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cq;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 912
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cq;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0, p2}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->c(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;I)I

    .line 913
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cq;->a:Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;->w(Lcom/ijinshan/kinghelper/firewall/IpDialSettingsActivity;)Z

    .line 914
    return-void
.end method
