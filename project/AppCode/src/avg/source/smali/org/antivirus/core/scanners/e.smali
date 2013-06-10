.class public final Lorg/antivirus/core/scanners/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lorg/antivirus/core/scanners/f;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/antivirus/core/scanners/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "0000000000000000000000000000000000000000"

    :cond_0
    iput-object p1, p0, Lorg/antivirus/core/scanners/e;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "0000000000000000000000000000000000000000"

    :cond_1
    iput-object p2, p0, Lorg/antivirus/core/scanners/e;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, "0000000000000000000000000000000000000000"

    :cond_2
    iput-object p3, p0, Lorg/antivirus/core/scanners/e;->c:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object p4, Lorg/antivirus/core/scanners/f;->e:Lorg/antivirus/core/scanners/f;

    :cond_3
    iput-object p4, p0, Lorg/antivirus/core/scanners/e;->d:Lorg/antivirus/core/scanners/f;

    if-nez p5, :cond_4

    const-string p5, "0"

    :cond_4
    iput-object p5, p0, Lorg/antivirus/core/scanners/e;->e:Ljava/lang/String;

    return-void
.end method
