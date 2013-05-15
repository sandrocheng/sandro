.class final Lcom/avast/android/mobilesecurity/ui/f;
.super Ljava/lang/Object;
.source "LockPatternView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;
    .locals 2
    .parameter

    .prologue
    .line 1182
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;-><init>(Landroid/os/Parcel;Lcom/avast/android/mobilesecurity/ui/b;)V

    return-object v0
.end method

.method public a(I)[Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;
    .locals 1
    .parameter

    .prologue
    .line 1186
    new-array v0, p1, [Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/ui/f;->a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1180
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/ui/f;->a(I)[Lcom/avast/android/mobilesecurity/ui/LockPatternView$SavedState;

    move-result-object v0

    return-object v0
.end method
