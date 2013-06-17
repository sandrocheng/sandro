.class public final enum Lcom/antivirus/ui/scan/results/s;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/antivirus/ui/scan/results/s;

.field public static final enum b:Lcom/antivirus/ui/scan/results/s;

.field public static final enum c:Lcom/antivirus/ui/scan/results/s;

.field private static final synthetic d:[Lcom/antivirus/ui/scan/results/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/antivirus/ui/scan/results/s;

    const-string v1, "DEBUG_MODE"

    invoke-direct {v0, v1, v2}, Lcom/antivirus/ui/scan/results/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/scan/results/s;->a:Lcom/antivirus/ui/scan/results/s;

    new-instance v0, Lcom/antivirus/ui/scan/results/s;

    const-string v1, "NON_MARKET"

    invoke-direct {v0, v1, v3}, Lcom/antivirus/ui/scan/results/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/scan/results/s;->b:Lcom/antivirus/ui/scan/results/s;

    new-instance v0, Lcom/antivirus/ui/scan/results/s;

    const-string v1, "ROOT"

    invoke-direct {v0, v1, v4}, Lcom/antivirus/ui/scan/results/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/antivirus/ui/scan/results/s;->c:Lcom/antivirus/ui/scan/results/s;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/antivirus/ui/scan/results/s;

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->a:Lcom/antivirus/ui/scan/results/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->b:Lcom/antivirus/ui/scan/results/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/antivirus/ui/scan/results/s;->c:Lcom/antivirus/ui/scan/results/s;

    aput-object v1, v0, v4

    sput-object v0, Lcom/antivirus/ui/scan/results/s;->d:[Lcom/antivirus/ui/scan/results/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/antivirus/ui/scan/results/s;
    .locals 1

    const-class v0, Lcom/antivirus/ui/scan/results/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/antivirus/ui/scan/results/s;

    return-object v0
.end method

.method public static values()[Lcom/antivirus/ui/scan/results/s;
    .locals 1

    sget-object v0, Lcom/antivirus/ui/scan/results/s;->d:[Lcom/antivirus/ui/scan/results/s;

    invoke-virtual {v0}, [Lcom/antivirus/ui/scan/results/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/antivirus/ui/scan/results/s;

    return-object v0
.end method
