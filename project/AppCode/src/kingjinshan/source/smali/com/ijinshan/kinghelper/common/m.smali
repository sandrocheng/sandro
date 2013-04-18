.class final Lcom/ijinshan/kinghelper/common/m;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/m;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 514
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/m;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/m;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;Ljava/util/ArrayList;)V

    .line 516
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/m;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 517
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/m;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 518
    return-void
.end method
