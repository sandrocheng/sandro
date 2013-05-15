.class Lcom/avast/android/generic/app/account/h;
.super Ljava/lang/Object;
.source "AccountFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/m;

.field final synthetic b:Lcom/avast/android/generic/app/account/AccountFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/AccountFragment;Lcom/avast/android/generic/app/account/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 949
    iput-object p1, p0, Lcom/avast/android/generic/app/account/h;->b:Lcom/avast/android/generic/app/account/AccountFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/account/h;->a:Lcom/avast/android/generic/app/account/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 952
    iget-object v0, p0, Lcom/avast/android/generic/app/account/h;->a:Lcom/avast/android/generic/app/account/m;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/m;->cancel(Z)Z

    .line 953
    return-void
.end method
