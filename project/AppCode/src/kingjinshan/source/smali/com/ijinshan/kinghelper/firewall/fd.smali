.class final Lcom/ijinshan/kinghelper/firewall/fd;
.super Ljava/lang/Object;
.source "UserWhiteBlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/a/g;

.field final synthetic b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;Lcom/ijinshan/kinghelper/firewall/a/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/fd;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/fd;->a:Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 533
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/fd;->a:Lcom/ijinshan/kinghelper/firewall/a/g;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(J)I

    .line 534
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/fd;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Lcom/ijinshan/kinghelper/firewall/ff;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/ff;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 535
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/fd;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/fd;->b:Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->a(Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;)Lcom/ijinshan/kinghelper/firewall/ff;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/firewall/UserWhiteBlackListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 536
    return-void
.end method
