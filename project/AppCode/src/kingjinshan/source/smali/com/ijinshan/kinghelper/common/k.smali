.class final Lcom/ijinshan/kinghelper/common/k;
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
    .line 470
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/k;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/k;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b(Lcom/ijinshan/kinghelper/common/PickListActivity;)V

    .line 475
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/k;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->a(Lcom/ijinshan/kinghelper/common/PickListActivity;)Lcom/ijinshan/kinghelper/common/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/r;->a()V

    .line 476
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/k;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 479
    invoke-static {}, Lcom/ijinshan/kinghelper/common/PickListActivity;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 482
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    return-void
.end method
