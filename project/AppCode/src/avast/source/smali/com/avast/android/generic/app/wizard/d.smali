.class Lcom/avast/android/generic/app/wizard/d;
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
    .line 116
    iput-object p1, p0, Lcom/avast/android/generic/app/wizard/d;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/d;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "accept"

    const-string v3, "no"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/avast/android/generic/app/wizard/d;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v6}, Lcom/avast/android/generic/app/wizard/EulaFragment;->d(Lcom/avast/android/generic/app/wizard/EulaFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/d;->a:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    .line 122
    return-void
.end method
