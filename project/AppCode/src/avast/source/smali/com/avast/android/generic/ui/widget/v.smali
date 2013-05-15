.class final Lcom/avast/android/generic/ui/widget/v;
.super Ljava/lang/Object;
.source "SelectorRow.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 407
    new-instance v0, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;-><init>(Landroid/os/Parcel;Lcom/avast/android/generic/ui/widget/t;)V

    return-object v0
.end method

.method public a(I)[Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 411
    new-array v0, p1, [Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/widget/v;->a(Landroid/os/Parcel;)Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/widget/v;->a(I)[Lcom/avast/android/generic/ui/widget/SelectorRow$SavedState;

    move-result-object v0

    return-object v0
.end method
