.class final Lcom/ijinshan/kinghelper/common/i;
.super Ljava/lang/Object;
.source "PickListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/PickListActivity;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/common/PickListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/i;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/i;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 407
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/i;->a:Lcom/ijinshan/kinghelper/common/PickListActivity;

    const v2, 0x7f0b01d0

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/PickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void

    .line 408
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
