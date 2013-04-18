.class Lcom/ijinshan/kpref/ListPreference$SavedState;
.super Lcom/ijinshan/kpref/Preference$BaseSavedState;
.source "ListPreference.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 327
    new-instance v0, Lcom/ijinshan/kpref/i;

    invoke-direct {v0}, Lcom/ijinshan/kpref/i;-><init>()V

    sput-object v0, Lcom/ijinshan/kpref/ListPreference$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 313
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kpref/ListPreference$SavedState;->a:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 325
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    invoke-super {p0, p1, p2}, Lcom/ijinshan/kpref/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 320
    iget-object v0, p0, Lcom/ijinshan/kpref/ListPreference$SavedState;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    return-void
.end method
