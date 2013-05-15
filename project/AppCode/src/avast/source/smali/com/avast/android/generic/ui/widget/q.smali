.class final Lcom/avast/android/generic/ui/widget/q;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 400
    new-instance v0, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    invoke-direct {v0, p1}, Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 404
    new-array v0, p1, [Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/widget/q;->a(Landroid/os/Parcel;)Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/avast/android/generic/ui/widget/q;->a(I)[Lcom/avast/android/generic/ui/widget/PasswordTextView$SavedState;

    move-result-object v0

    return-object v0
.end method
