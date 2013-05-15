.class Lcom/avast/android/generic/app/about/j;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/about/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/FeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 400
    iget-object v0, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    const-string v1, "ms-Feedback"

    const-string v2, "send"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/about/FeedbackFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 401
    iget-object v0, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->q(Lcom/avast/android/generic/app/about/FeedbackFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    new-instance v1, Lcom/avast/android/generic/app/about/n;

    iget-object v2, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-direct {v1, v2, v3}, Lcom/avast/android/generic/app/about/n;-><init>(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/f;)V

    invoke-static {v0, v1}, Lcom/avast/android/generic/app/about/FeedbackFragment;->b(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/n;)Lcom/avast/android/generic/app/about/n;

    .line 406
    iget-object v0, p0, Lcom/avast/android/generic/app/about/j;->a:Lcom/avast/android/generic/app/about/FeedbackFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/about/FeedbackFragment;->r(Lcom/avast/android/generic/app/about/FeedbackFragment;)Lcom/avast/android/generic/app/about/n;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/about/n;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
