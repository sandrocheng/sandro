.class public Lorg/antivirus/core/scanners/ScannerPackagesConfig;
.super Lorg/antivirus/core/scanners/l;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public b:Ljava/lang/Boolean;

.field public c:Ljava/util/List;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/antivirus/core/scanners/y;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/y;-><init>()V

    sput-object v0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/core/scanners/l;-><init>()V

    const v0, 0x1869f

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/antivirus/core/scanners/l;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/antivirus/core/scanners/m;->valueOf(Ljava/lang/String;)Lorg/antivirus/core/scanners/m;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->a:Lorg/antivirus/core/scanners/m;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->b:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/core/scanners/ScannerPackagesConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->a:Lorg/antivirus/core/scanners/m;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/m;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->c:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget v0, p0, Lorg/antivirus/core/scanners/ScannerPackagesConfig;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
