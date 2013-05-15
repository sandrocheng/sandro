.class Lcom/avast/android/generic/app/account/f;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 861
    iput-object p1, p0, Lcom/avast/android/generic/app/account/f;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    .line 864
    iget-object v0, p0, Lcom/avast/android/generic/app/account/f;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->v(Lcom/avast/android/generic/app/account/AccountFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/avast/android/generic/app/account/f;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    const-string v1, "ms-Wizard"

    const-string v2, "Avast! Account setup"

    const-string v3, "cancel"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/app/account/AccountFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/app/account/f;->a:Lcom/avast/android/generic/app/account/AccountFragment;

    invoke-static {v0}, Lcom/avast/android/generic/app/account/AccountFragment;->y(Lcom/avast/android/generic/app/account/AccountFragment;)V

    .line 868
    return-void
.end method
