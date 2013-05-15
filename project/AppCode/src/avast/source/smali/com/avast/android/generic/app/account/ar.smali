.class Lcom/avast/android/generic/app/account/ar;
.super Ljava/lang/Object;
.source "DisconnectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/app/account/at;

.field final synthetic b:Lcom/avast/android/generic/app/account/DisconnectFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/app/account/DisconnectFragment;Lcom/avast/android/generic/app/account/at;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/avast/android/generic/app/account/ar;->b:Lcom/avast/android/generic/app/account/DisconnectFragment;

    iput-object p2, p0, Lcom/avast/android/generic/app/account/ar;->a:Lcom/avast/android/generic/app/account/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/avast/android/generic/app/account/ar;->a:Lcom/avast/android/generic/app/account/at;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/app/account/at;->cancel(Z)Z

    .line 235
    return-void
.end method
