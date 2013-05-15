.class public abstract Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "AbstractFileBrowserActivity.java"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/avast/android/generic/filebrowser/d;->a:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/d;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->a:Ljava/lang/String;

    .line 27
    sget-object v0, Lcom/avast/android/generic/filebrowser/d;->b:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/d;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->b:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/avast/android/generic/filebrowser/d;->c:Lcom/avast/android/generic/filebrowser/d;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/d;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;
.end method

.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->a()Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "singleFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d()Z

    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;->finish()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-super {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;->onBackPressed()V

    goto :goto_0
.end method
