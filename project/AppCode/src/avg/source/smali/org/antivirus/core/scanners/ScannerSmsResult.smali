.class public Lorg/antivirus/core/scanners/ScannerSmsResult;
.super Lorg/antivirus/core/scanners/d;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/antivirus/core/scanners/ae;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ae;-><init>()V

    sput-object v0, Lorg/antivirus/core/scanners/ScannerSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/core/scanners/ScannerSmsResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectOutputStream;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lorg/antivirus/core/scanners/ScannerSmsResult;)V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    iput-boolean v0, p1, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p1, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->a:Z

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerSmsResult;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
