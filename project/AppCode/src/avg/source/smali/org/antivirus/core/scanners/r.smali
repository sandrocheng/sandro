.class public final Lorg/antivirus/core/scanners/r;
.super Lorg/antivirus/core/scanners/d;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    iput v0, p0, Lorg/antivirus/core/scanners/r;->c:I

    iput v0, p0, Lorg/antivirus/core/scanners/r;->d:I

    iput v0, p0, Lorg/antivirus/core/scanners/r;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/r;->b:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/r;->c:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/r;->d:I

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/antivirus/core/scanners/r;->e:I

    return-void
.end method

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectOutputStream;)V

    iget v0, p0, Lorg/antivirus/core/scanners/r;->b:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/antivirus/core/scanners/r;->c:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/antivirus/core/scanners/r;->d:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget v0, p0, Lorg/antivirus/core/scanners/r;->e:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    return-void
.end method
