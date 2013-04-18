.class Lcom/ijinshan/kpref/VolumePreference$SavedState;
.super Lcom/ijinshan/kpref/Preference$BaseSavedState;
.source "VolumePreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Lcom/ijinshan/kpref/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 201
    new-instance v0, Lcom/ijinshan/kpref/z;

    invoke-direct {v0}, Lcom/ijinshan/kpref/z;-><init>()V

    sput-object v0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 178
    new-instance v0, Lcom/ijinshan/kpref/ac;

    invoke-direct {v0}, Lcom/ijinshan/kpref/ac;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    .line 182
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ijinshan/kpref/ac;->a:I

    .line 183
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/ijinshan/kpref/ac;->b:I

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .parameter

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 178
    new-instance v0, Lcom/ijinshan/kpref/ac;

    invoke-direct {v0}, Lcom/ijinshan/kpref/ac;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    .line 199
    return-void
.end method


# virtual methods
.method final a()Lcom/ijinshan/kpref/ac;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-super {p0, p1, p2}, Lcom/ijinshan/kpref/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    iget v0, v0, Lcom/ijinshan/kpref/ac;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/ijinshan/kpref/VolumePreference$SavedState;->a:Lcom/ijinshan/kpref/ac;

    iget v0, v0, Lcom/ijinshan/kpref/ac;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    return-void
.end method
