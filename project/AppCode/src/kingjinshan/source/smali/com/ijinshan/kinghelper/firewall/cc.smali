.class final Lcom/ijinshan/kinghelper/firewall/cc;
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
    .line 178
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/cc;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/cc;->a:Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/IpDialNoUseNumberListActivity;->finish()V

    .line 182
    return-void
.end method
