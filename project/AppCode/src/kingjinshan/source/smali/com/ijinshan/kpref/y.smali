.class final Lcom/ijinshan/kpref/y;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/ijinshan/kpref/PreferenceScreen$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 256
    new-instance v0, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/ijinshan/kpref/PreferenceScreen$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 260
    new-array v0, p0, [Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 254
    new-instance v0, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    invoke-direct {v0, p1}, Lcom/ijinshan/kpref/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 254
    new-array v0, p1, [Lcom/ijinshan/kpref/PreferenceScreen$SavedState;

    return-object v0
.end method
