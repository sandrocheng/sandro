.class final Lcom/ijinshan/kinghelper/firewall/ex;
.super Landroid/database/DataSetObserver;
.source "UserWhiteBlackListActivity.java"


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ex;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ex;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ex;->a:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Lcom/ijinshan/kinghelper/firewall/ff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ijinshan/kinghelper/firewall/ff;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 80
    return-void

    .line 78
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
