.class Lcom/avast/android/generic/filebrowser/c;
.super Ljava/lang/Object;
.source "AbstractFileBrowserFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/avast/android/generic/filebrowser/c;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/c;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->d(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/generic/filebrowser/c;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-static {v2}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->e(Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;)Lcom/avast/android/generic/filebrowser/f;

    move-result-object v2

    invoke-interface {v2}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/avast/android/generic/filebrowser/c;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v1}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 225
    iget-object v0, p0, Lcom/avast/android/generic/filebrowser/c;->a:Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 226
    return-void
.end method
