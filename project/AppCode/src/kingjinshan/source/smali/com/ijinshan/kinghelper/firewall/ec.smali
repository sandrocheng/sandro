.class final Lcom/ijinshan/kinghelper/firewall/ec;
.super Ljava/lang/Object;
.source "ServicesSmsListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/ec;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 316
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/ec;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->f(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080112

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 319
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/ec;->a:Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;->a(Lcom/ijinshan/kinghelper/firewall/ServicesSmsListActivity;Z)V

    .line 320
    return-void
.end method
