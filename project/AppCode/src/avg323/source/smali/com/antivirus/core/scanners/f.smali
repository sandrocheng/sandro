.class public Lcom/antivirus/core/scanners/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/antivirus/core/scanners/g;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "0000000000000000000000000000000000000000"

    :cond_0
    iput-object p1, p0, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "0000000000000000000000000000000000000000"

    :cond_1
    iput-object p2, p0, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, "0000000000000000000000000000000000000000"

    :cond_2
    iput-object p3, p0, Lcom/antivirus/core/scanners/f;->c:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object p4, Lcom/antivirus/core/scanners/g;->e:Lcom/antivirus/core/scanners/g;

    :cond_3
    iput-object p4, p0, Lcom/antivirus/core/scanners/f;->d:Lcom/antivirus/core/scanners/g;

    if-nez p5, :cond_4

    const-string p5, "0"

    :cond_4
    iput-object p5, p0, Lcom/antivirus/core/scanners/f;->e:Ljava/lang/String;

    if-nez p6, :cond_5

    const-string p6, "1"

    :cond_5
    iput-object p6, p0, Lcom/antivirus/core/scanners/f;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/antivirus/core/scanners/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, "0000000000000000000000000000000000000000"

    :cond_0
    iput-object p1, p0, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    if-nez p2, :cond_1

    const-string p2, "0000000000000000000000000000000000000000"

    :cond_1
    iput-object p2, p0, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    if-nez p3, :cond_2

    const-string p3, "0000000000000000000000000000000000000000"

    :cond_2
    iput-object p3, p0, Lcom/antivirus/core/scanners/f;->c:Ljava/lang/String;

    if-nez p4, :cond_3

    sget-object p4, Lcom/antivirus/core/scanners/g;->e:Lcom/antivirus/core/scanners/g;

    :cond_3
    iput-object p4, p0, Lcom/antivirus/core/scanners/f;->d:Lcom/antivirus/core/scanners/g;

    if-nez p5, :cond_4

    const-string p5, "0"

    :cond_4
    iput-object p5, p0, Lcom/antivirus/core/scanners/f;->e:Ljava/lang/String;

    if-nez p6, :cond_5

    const-string p6, "1"

    :cond_5
    iput-object p6, p0, Lcom/antivirus/core/scanners/f;->f:Ljava/lang/String;

    if-nez p7, :cond_6

    const-string p7, ""

    :cond_6
    iput-object p7, p0, Lcom/antivirus/core/scanners/f;->g:Ljava/lang/String;

    return-void
.end method
