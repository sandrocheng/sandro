.class Lcom/avast/android/generic/app/wizard/c;
.super Ljava/lang/Object;
.source "EulaFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/wizard/EulaFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/wizard/EulaFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/avast/android/generic/ae;

    .line 100
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "accept"

    const-string v3, "yes"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v7}, Lcom/avast/android/generic/app/wizard/EulaFragment;->d(Lcom/avast/android/generic/app/wizard/EulaFragment;)J

    move-result-wide v7

    sub-long/2addr v4, v7

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 102
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "communityIQ allowed during accept"

    invoke-virtual {v6}, Lcom/avast/android/generic/ae;->p()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "yes"

    :goto_0
    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 105
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->d()V

    .line 107
    const-string v0, "eulaDone"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 108
    invoke-virtual {v6}, Lcom/avast/android/generic/ae;->b()Z

    .line 110
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/wizard/EulaFragment;->c()V

    .line 112
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/c;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 113
    return-void

    .line 102
    :cond_0
    const-string v3, "no"

    goto :goto_0
.end method
