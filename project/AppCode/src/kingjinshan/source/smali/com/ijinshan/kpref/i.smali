.class final Lcom/ijinshan/kpref/i;
.super Ljava/lang/Object;
.source "ListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/ijinshan/kpref/ListPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 330
    new-instance v0, Lcom/ijinshan/kpref/ListPreference$SavedState;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/ijinshan/kpref/ListPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 334
    new-array v0, p0, [Lcom/ijinshan/kpref/ListPreference$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 328
    new-instance v0, Lcom/ijinshan/kpref/ListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/ijinshan/kpref/ListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 328
    new-array v0, p1, [Lcom/ijinshan/kpref/ListPreference$SavedState;

    return-object v0
.end method
