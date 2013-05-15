.class public Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;
.super Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;
.source "SystemFileBrowserFragment.java"


# instance fields
.field private d:Z

.field private e:Lcom/actionbarsherlock/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/g;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/filebrowser/g;-><init>(Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->e:Lcom/actionbarsherlock/view/ActionMode$Callback;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()Lcom/actionbarsherlock/view/ActionMode$Callback;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->e:Lcom/actionbarsherlock/view/ActionMode$Callback;

    return-object v0
.end method

.method protected a(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)Lcom/avast/android/generic/filebrowser/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/avast/android/mobilesecurity/filebrowser/a;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/avast/android/generic/filebrowser/d;)V

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/avast/android/generic/filebrowser/e;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 76
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/k;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/avast/android/mobilesecurity/filebrowser/k;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected b(Lcom/avast/android/generic/filebrowser/f;)Landroid/os/Bundle;
    .locals 3
    .parameter

    .prologue
    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v1, "path"

    const-string v2, "ROOT_PATH"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v1, "path"

    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c(Lcom/avast/android/generic/filebrowser/f;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    invoke-interface {p1}, Lcom/avast/android/generic/filebrowser/f;->h()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->d:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->a(Z)V

    .line 104
    return-void

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string v0, "file"

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pick_virtual_root"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;->d:Z

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;->onDestroy()V

    .line 114
    invoke-static {}, Lcom/avast/android/mobilesecurity/filebrowser/h;->i()V

    .line 115
    return-void
.end method
