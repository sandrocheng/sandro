.class public abstract Lcom/antivirus/core/scanners/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/e;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/io/ObjectInputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/e;->a:Z

    return-void
.end method

.method public a(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/e;->a:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    return-void
.end method
