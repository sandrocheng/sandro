.class public Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;
.super Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;
.source "BlockAvastPasswordActivity.java"


# instance fields
.field private g:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;)Landroid/os/Handler$Callback;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->g:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/locking/core/App;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    const-string v1, "app"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x5000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    const v2, 0x7f07002b

    .line 41
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    .line 44
    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/a;

    invoke-direct {v1, p0, v0}, Lcom/avast/android/mobilesecurity/app/locking/a;-><init>(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;Lcom/avast/android/generic/util/s;)V

    invoke-static {p0, v2, v1}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/content/Context;ILcom/avast/android/generic/ui/ad;)Landroid/os/Handler$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->g:Landroid/os/Handler$Callback;

    .line 71
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/avast/android/generic/ui/PasswordDialog;->a(Landroid/support/v4/app/FragmentManager;I)V

    .line 73
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/locking/b;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/locking/b;-><init>(Lcom/avast/android/mobilesecurity/app/locking/BlockAvastPasswordActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/avast/android/mobilesecurity/app/locking/BlockCommonActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
