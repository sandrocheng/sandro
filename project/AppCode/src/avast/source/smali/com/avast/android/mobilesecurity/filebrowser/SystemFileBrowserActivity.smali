.class public Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserActivity;
.super Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;
.source "SystemFileBrowserActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/avast/android/generic/filebrowser/AbstractFileBrowserActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/avast/android/generic/filebrowser/AbstractFileBrowserFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/filebrowser/SystemFileBrowserFragment;-><init>()V

    return-object v0
.end method
