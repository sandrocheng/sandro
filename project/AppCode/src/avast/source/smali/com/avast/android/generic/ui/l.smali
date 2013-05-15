.class Lcom/avast/android/generic/ui/l;
.super Ljava/lang/Object;
.source "CheckerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/b/d;

.field final synthetic b:Lcom/avast/android/generic/ui/CheckerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/CheckerFragment;Lcom/avast/android/generic/ui/b/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    iput-object p2, p0, Lcom/avast/android/generic/ui/l;->a:Lcom/avast/android/generic/ui/b/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/CheckerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    .line 450
    iget-object v1, p0, Lcom/avast/android/generic/ui/l;->a:Lcom/avast/android/generic/ui/b/d;

    iget-object v2, p0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v1, v0, v2}, Lcom/avast/android/generic/ui/b/d;->b(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V

    .line 452
    iget-object v1, p0, Lcom/avast/android/generic/ui/l;->b:Lcom/avast/android/generic/ui/CheckerFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    new-instance v1, Lcom/avast/android/generic/ui/m;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/m;-><init>(Lcom/avast/android/generic/ui/l;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
