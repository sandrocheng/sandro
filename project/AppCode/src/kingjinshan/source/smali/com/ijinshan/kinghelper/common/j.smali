.class final Lcom/ijinshan/kinghelper/common/j;
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
    .line 447
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 450
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    .line 452
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->c(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/common/PickListActivity;->d(Lcom/ijinshan/kinghelper/common/PickListActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v4}, Lcom/ijinshan/kinghelper/common/PickListActivity;->e(Lcom/ijinshan/kinghelper/common/PickListActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;IILjava/lang/String;)Ljava/util/ArrayList;

    .line 456
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 457
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/j;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 460
    invoke-static {}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 463
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 465
    return-void
.end method
