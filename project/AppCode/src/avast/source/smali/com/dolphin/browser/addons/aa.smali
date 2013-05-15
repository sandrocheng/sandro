.class Lcom/dolphin/browser/addons/aa;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 215
    new-instance v0, Lcom/dolphin/browser/addons/DownloadInfo;

    invoke-direct {v0, p1}, Lcom/dolphin/browser/addons/DownloadInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/dolphin/browser/addons/DownloadInfo;
    .locals 1
    .parameter

    .prologue
    .line 220
    new-array v0, p1, [Lcom/dolphin/browser/addons/DownloadInfo;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/aa;->a(Landroid/os/Parcel;)Lcom/dolphin/browser/addons/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/dolphin/browser/addons/aa;->a(I)[Lcom/dolphin/browser/addons/DownloadInfo;

    move-result-object v0

    return-object v0
.end method
