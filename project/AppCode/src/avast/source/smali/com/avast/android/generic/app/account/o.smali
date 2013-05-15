.class Lcom/avast/android/generic/app/account/o;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/avast/android/generic/app/account/m;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/avast/android/generic/app/account/o;->b:Lcom/avast/android/generic/app/account/m;

    iput-object p2, p0, Lcom/avast/android/generic/app/account/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 685
    iget-object v0, p0, Lcom/avast/android/generic/app/account/o;->b:Lcom/avast/android/generic/app/account/m;

    iget-object v0, v0, Lcom/avast/android/generic/app/account/m;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/generic/app/account/o;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 686
    return-void
.end method
