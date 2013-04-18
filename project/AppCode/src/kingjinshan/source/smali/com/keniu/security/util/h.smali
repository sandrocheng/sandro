.class final Lcom/keniu/security/util/h;
.super Ljava/lang/Object;
.source "CustomDialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/keniu/security/util/CustomDialogPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 502
    new-instance v0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    invoke-direct {v0, p0}, Lcom/keniu/security/util/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/keniu/security/util/CustomDialogPreference$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 507
    new-array v0, p0, [Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    return-object v0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 499
    new-instance v0, Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/keniu/security/util/CustomDialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 499
    new-array v0, p1, [Lcom/keniu/security/util/CustomDialogPreference$SavedState;

    return-object v0
.end method
