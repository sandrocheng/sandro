.class public abstract Lcom/avast/android/generic/ui/GeneralSettingsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedFragment;
.source "GeneralSettingsFragment.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/GeneralSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "layoutId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/generic/ui/GeneralSettingsFragment;->a:I

    .line 31
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    sget v0, Lcom/avast/android/generic/v;->j:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 36
    iget v2, p0, Lcom/avast/android/generic/ui/GeneralSettingsFragment;->a:I

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    return-object v1
.end method
