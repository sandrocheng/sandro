.class public final enum Lorg/antivirus/core/scanners/f;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/scanners/f;

.field public static final enum b:Lorg/antivirus/core/scanners/f;

.field public static final enum c:Lorg/antivirus/core/scanners/f;

.field public static final enum d:Lorg/antivirus/core/scanners/f;

.field public static final enum e:Lorg/antivirus/core/scanners/f;

.field private static final synthetic g:[Lorg/antivirus/core/scanners/f;


# instance fields
.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lorg/antivirus/core/scanners/f;

    const-string v1, "NOT_INSTALLED"

    invoke-direct {v0, v1, v7, v3}, Lorg/antivirus/core/scanners/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/scanners/f;->a:Lorg/antivirus/core/scanners/f;

    new-instance v0, Lorg/antivirus/core/scanners/f;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3, v4}, Lorg/antivirus/core/scanners/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/scanners/f;->b:Lorg/antivirus/core/scanners/f;

    new-instance v0, Lorg/antivirus/core/scanners/f;

    const-string v1, "DATA"

    invoke-direct {v0, v1, v4, v5}, Lorg/antivirus/core/scanners/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/scanners/f;->c:Lorg/antivirus/core/scanners/f;

    new-instance v0, Lorg/antivirus/core/scanners/f;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v5, v6}, Lorg/antivirus/core/scanners/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/scanners/f;->d:Lorg/antivirus/core/scanners/f;

    new-instance v0, Lorg/antivirus/core/scanners/f;

    const-string v1, "OTHER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lorg/antivirus/core/scanners/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/antivirus/core/scanners/f;->e:Lorg/antivirus/core/scanners/f;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/antivirus/core/scanners/f;

    sget-object v1, Lorg/antivirus/core/scanners/f;->a:Lorg/antivirus/core/scanners/f;

    aput-object v1, v0, v7

    sget-object v1, Lorg/antivirus/core/scanners/f;->b:Lorg/antivirus/core/scanners/f;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/scanners/f;->c:Lorg/antivirus/core/scanners/f;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/scanners/f;->d:Lorg/antivirus/core/scanners/f;

    aput-object v1, v0, v5

    sget-object v1, Lorg/antivirus/core/scanners/f;->e:Lorg/antivirus/core/scanners/f;

    aput-object v1, v0, v6

    sput-object v0, Lorg/antivirus/core/scanners/f;->g:[Lorg/antivirus/core/scanners/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/antivirus/core/scanners/f;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/scanners/f;
    .locals 1

    const-class v0, Lorg/antivirus/core/scanners/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/f;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/scanners/f;
    .locals 1

    sget-object v0, Lorg/antivirus/core/scanners/f;->g:[Lorg/antivirus/core/scanners/f;

    invoke-virtual {v0}, [Lorg/antivirus/core/scanners/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/scanners/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lorg/antivirus/core/scanners/f;->f:I

    return v0
.end method
