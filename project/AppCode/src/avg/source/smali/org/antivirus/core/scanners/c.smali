.class public final enum Lorg/antivirus/core/scanners/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/antivirus/core/scanners/c;

.field public static final enum b:Lorg/antivirus/core/scanners/c;

.field public static final enum c:Lorg/antivirus/core/scanners/c;

.field public static final enum d:Lorg/antivirus/core/scanners/c;

.field private static final synthetic e:[Lorg/antivirus/core/scanners/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/antivirus/core/scanners/c;

    const-string v1, "ScanClientFullScan"

    invoke-direct {v0, v1, v2}, Lorg/antivirus/core/scanners/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    new-instance v0, Lorg/antivirus/core/scanners/c;

    const-string v1, "ScanClientFileScannerUI"

    invoke-direct {v0, v1, v3}, Lorg/antivirus/core/scanners/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/c;->b:Lorg/antivirus/core/scanners/c;

    new-instance v0, Lorg/antivirus/core/scanners/c;

    const-string v1, "ScanClientNewPackage"

    invoke-direct {v0, v1, v4}, Lorg/antivirus/core/scanners/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/c;->c:Lorg/antivirus/core/scanners/c;

    new-instance v0, Lorg/antivirus/core/scanners/c;

    const-string v1, "ScanClientPreNewPackage"

    invoke-direct {v0, v1, v5}, Lorg/antivirus/core/scanners/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/antivirus/core/scanners/c;->d:Lorg/antivirus/core/scanners/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/antivirus/core/scanners/c;

    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    aput-object v1, v0, v2

    sget-object v1, Lorg/antivirus/core/scanners/c;->b:Lorg/antivirus/core/scanners/c;

    aput-object v1, v0, v3

    sget-object v1, Lorg/antivirus/core/scanners/c;->c:Lorg/antivirus/core/scanners/c;

    aput-object v1, v0, v4

    sget-object v1, Lorg/antivirus/core/scanners/c;->d:Lorg/antivirus/core/scanners/c;

    aput-object v1, v0, v5

    sput-object v0, Lorg/antivirus/core/scanners/c;->e:[Lorg/antivirus/core/scanners/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/antivirus/core/scanners/c;
    .locals 1

    const-class v0, Lorg/antivirus/core/scanners/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/c;

    return-object v0
.end method

.method public static values()[Lorg/antivirus/core/scanners/c;
    .locals 1

    sget-object v0, Lorg/antivirus/core/scanners/c;->e:[Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0}, [Lorg/antivirus/core/scanners/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/antivirus/core/scanners/c;

    return-object v0
.end method
