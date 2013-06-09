.class final Lorg/antivirus/core/scanners/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lorg/antivirus/core/scanners/ScannerFilesResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/antivirus/core/scanners/ScannerFilesResult;-><init>(Landroid/os/Parcel;B)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lorg/antivirus/core/scanners/ScannerFilesResult;

    return-object v0
.end method
