.class Lcom/keniu/security/util/CustomDialogPreference$SavedState;
.super Lcom/ijinshan/kpref/Preference$BaseSavedState;
.source "CustomDialogPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Z

.field b:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 499
    new-instance v0, Lcom/keniu/security/util/h;

    invoke-direct {v0}, Lcom/keniu/security/util/h;-><init>()V

    sput-object v0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 482
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->a:Z

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->b:Landroid/os/Bundle;

    .line 485
    return-void

    .line 483
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 496
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-super {p0, p1, p2}, Lcom/ijinshan/kpref/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 490
    iget-boolean v0, p0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v0, p0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;->b:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 492
    return-void

    .line 490
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
