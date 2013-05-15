.class public Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "DeleteFileActivity.java"


# instance fields
.field private a:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 31
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;)V

    .line 32
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity$DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/f;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/scanner/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->b()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->a:Landroid/net/Uri;

    .line 27
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/DeleteFileActivity;->a()V

    .line 28
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "DeleteFileActivity onStop()"

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 45
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 46
    return-void
.end method
