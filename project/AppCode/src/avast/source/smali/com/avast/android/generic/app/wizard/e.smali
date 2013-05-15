.class Lcom/avast/android/generic/app/wizard/e;
.super Ljava/lang/Object;
.source "EulaFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/c;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ae;

.field final synthetic b:Lcom/avast/android/generic/app/wizard/EulaFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/wizard/EulaFragment;Lcom/avast/android/generic/ae;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/avast/android/generic/app/wizard/e;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/wizard/e;->a:Lcom/avast/android/generic/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/generic/ui/widget/CheckBoxRow;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/e;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "communityIQ"

    if-eqz p2, :cond_0

    const-string v3, "yes"

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/avast/android/generic/app/wizard/e;->b:Lcom/avast/android/generic/app/wizard/EulaFragment;

    invoke-static {v6}, Lcom/avast/android/generic/app/wizard/EulaFragment;->d(Lcom/avast/android/generic/app/wizard/EulaFragment;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/wizard/EulaFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 139
    iget-object v0, p0, Lcom/avast/android/generic/app/wizard/e;->a:Lcom/avast/android/generic/ae;

    invoke-virtual {v0, p2}, Lcom/avast/android/generic/ae;->c(Z)V

    .line 140
    return-void

    .line 137
    :cond_0
    const-string v3, "no"

    goto :goto_0
.end method
