.class final Lcom/avast/android/mobilesecurity/scan/h;
.super Ljava/lang/Object;
.source "ScanProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 86
    new-instance v0, Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    invoke-direct {v0, p1}, Lcom/avast/android/mobilesecurity/scan/ScanProgress;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/avast/android/mobilesecurity/scan/ScanProgress;
    .locals 1
    .parameter

    .prologue
    .line 90
    new-array v0, p1, [Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/scan/h;->a(Landroid/os/Parcel;)Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/avast/android/mobilesecurity/scan/h;->a(I)[Lcom/avast/android/mobilesecurity/scan/ScanProgress;

    move-result-object v0

    return-object v0
.end method
