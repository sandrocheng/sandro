.class public Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;
.super Landroid/support/v4/app/Fragment;
.source "ManagerPagerFragment.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;->a:I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/manager/ManagerPagerFragment$RetainFragment;->setRetainInstance(Z)V

    .line 84
    return-void
.end method
