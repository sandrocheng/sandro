.class final Lorg/antivirus/core/scanners/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/antivirus/core/scanners/k;


# instance fields
.field final synthetic a:Lorg/antivirus/core/scanners/n;


# direct methods
.method constructor <init>(Lorg/antivirus/core/scanners/n;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/scanners/o;->a:Lorg/antivirus/core/scanners/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/scanners/o;->a:Lorg/antivirus/core/scanners/n;

    iget-object v0, v0, Lorg/antivirus/core/scanners/n;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/r;

    iget v1, v0, Lorg/antivirus/core/scanners/r;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/antivirus/core/scanners/r;->c:I

    return-void
.end method
