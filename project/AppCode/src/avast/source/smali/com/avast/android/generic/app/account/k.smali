.class Lcom/avast/android/generic/app/account/k;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/avast/android/generic/app/account/j;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/j;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/avast/android/generic/app/account/k;->b:Lcom/avast/android/generic/app/account/j;

    iput p2, p0, Lcom/avast/android/generic/app/account/k;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 469
    iget-object v0, p0, Lcom/avast/android/generic/app/account/k;->b:Lcom/avast/android/generic/app/account/j;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/j;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/generic/app/account/k;->a:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 470
    return-void
.end method
