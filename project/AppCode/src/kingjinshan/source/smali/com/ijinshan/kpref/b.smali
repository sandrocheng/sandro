.class final Lcom/ijinshan/kpref/b;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/ijinshan/kpref/DialogPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 470
    new-instance v0, Lcom/ijinshan/kpref/DialogPreference$SavedState;

    invoke-direct {v0, p0}, Lcom/ijinshan/kpref/DialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/ijinshan/kpref/DialogPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 474
    new-array v0, p0, [Lcom/ijinshan/kpref/DialogPreference$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 468
    new-instance v0, Lcom/ijinshan/kpref/DialogPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/ijinshan/kpref/DialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 468
    new-array v0, p1, [Lcom/ijinshan/kpref/DialogPreference$SavedState;

    return-object v0
.end method