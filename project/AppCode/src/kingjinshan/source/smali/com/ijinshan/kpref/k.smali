.class final Lcom/ijinshan/kpref/k;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1657
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/ijinshan/kpref/Preference$BaseSavedState;
    .locals 1
    .parameter

    .prologue
    .line 1659
    new-instance v0, Lcom/ijinshan/kpref/Preference$BaseSavedState;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/ijinshan/kpref/Preference$BaseSavedState;
    .locals 1
    .parameter

    .prologue
    .line 1663
    new-array v0, p0, [Lcom/ijinshan/kpref/Preference$BaseSavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1657
    new-instance v0, Lcom/ijinshan/kpref/Preference$BaseSavedState;

    invoke-direct {v0, p1}, Lcom/ijinshan/kpref/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1657
    new-array v0, p1, [Lcom/ijinshan/kpref/Preference$BaseSavedState;

    return-object v0
.end method
