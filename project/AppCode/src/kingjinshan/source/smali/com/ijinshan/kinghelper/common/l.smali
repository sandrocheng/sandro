.class final Lcom/ijinshan/kinghelper/common/l;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/l;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/common/l;->a:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 490
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/l;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 492
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/l;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const v2, 0x7f0b01cd

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/l;->a:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 496
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 497
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/l;->b:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/common/PickListActivity;->finish()V

    .line 498
    return-void

    .line 493
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
