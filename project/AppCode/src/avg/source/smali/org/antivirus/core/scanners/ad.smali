.class public final Lorg/antivirus/core/scanners/ad;
.super Lorg/antivirus/core/scanners/d;


# instance fields
.field protected b:Z

.field protected c:Z

.field protected d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/antivirus/core/scanners/d;-><init>()V

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    return v0
.end method

.method public final a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectInputStream;)V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    return-void
.end method

.method public final a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/antivirus/core/scanners/d;->a(Ljava/io/ObjectOutputStream;)V

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    invoke-virtual {p0}, Lorg/antivirus/core/scanners/ad;->e()V

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    invoke-virtual {p0}, Lorg/antivirus/core/scanners/ad;->e()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    return v0
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    invoke-virtual {p0}, Lorg/antivirus/core/scanners/ad;->e()V

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    return v0
.end method

.method protected final e()V
    .locals 1

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/antivirus/core/scanners/ad;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
