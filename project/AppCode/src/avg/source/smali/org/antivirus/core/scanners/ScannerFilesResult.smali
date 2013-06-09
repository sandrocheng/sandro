.class public Lorg/antivirus/core/scanners/ScannerFilesResult;
.super Lorg/antivirus/core/scanners/d;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public b:I

.field public c:Ljava/util/ArrayList;

.field public d:Ljava/util/TreeMap;

.field public e:Ljava/util/TreeMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/antivirus/core/scanners/v;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/v;-><init>()V

    sput-object v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/antivirus/core/scanners/ScannerFilesResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    return-void
.end method

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectOutputStream;)V

    iget v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->d:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->a:Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0, p1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    :cond_0
    iget-object v6, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    new-instance v0, Lorg/antivirus/core/scanners/e;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/antivirus/core/scanners/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V

    invoke-virtual {v6, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->a:Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
