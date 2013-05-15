.class Lcom/avast/android/generic/app/about/l;
.super Ljava/lang/Object;
.source "FeedbackFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/about/n;

.field final synthetic b:Lcom/avast/android/generic/app/about/FeedbackFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/about/FeedbackFragment;Lcom/avast/android/generic/app/about/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/avast/android/generic/app/about/l;->b:Lcom/avast/android/generic/app/about/FeedbackFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/about/l;->a:Lcom/avast/android/generic/app/about/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/avast/android/generic/app/about/l;->a:Lcom/avast/android/generic/app/about/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/about/n;->cancel(Z)Z

    .line 572
    return-void
.end method
